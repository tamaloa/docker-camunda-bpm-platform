# Put sed command to change port when starting container into start command
sed -i 's|#!/bin/bash -eu|#!/bin/bash -eu\nsed -i "s/8080/${PORT}/g" conf/server.xml|g' /camunda/camunda.sh