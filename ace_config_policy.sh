#!/bin/bash

# © Copyright IBM Corporation 2018.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_DIR}/ace_config_logging.sh

log "Handling policy configuration"

mkdir /home/aceuser/ace-server/overrides/DefaultPolicies
cp /home/aceuser/initial-config/policy/*.policyxml /home/aceuser/ace-server/overrides/DefaultPolicies/.
cp /home/aceuser/initial-config/policy/policy.descriptor /home/aceuser/ace-server/overrides/DefaultPolicies/policy.descriptor

log "Policy configuration complete"
