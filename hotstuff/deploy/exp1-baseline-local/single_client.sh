#!/bin/bash
# Try to run the replicas as in run_demo.sh first and then run_demo_client.sh.
# Use Ctrl-C to terminate the proposing replica (e.g. replica 0). Leader
# rotation will be scheduled. Try to kill and run run_demo_client.sh again, new
# commands should still get through (be replicated) once the new leader becomes
# stable.


base_dir="./deploy/exp1-baseline-local"

if [ "$#" -le 0 ]
then

    echo "Usage: single_client.sh {client ID}"

else

./examples/hotstuff-client $base_dir/conf/hotstuff.conf $base_dir/log/client$1.log --cid $1 --iter -1 --max-async 4

fi
