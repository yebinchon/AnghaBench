
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_queue {int remaining; } ;



int do_rpc_queue_empty (struct rpc_queue *Q) {
  return !Q->remaining;
}
