
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_queue {TYPE_1__* completed; } ;
struct TYPE_2__ {long long x; } ;


 int assert (struct rpc_queue*) ;
 double precise_now ;
 scalar_t__ rpc_poll (double) ;

long long do_rpc_queue_next (struct rpc_queue *Q, double timeout) {
  assert (Q);
  if (Q->completed) {

    return Q->completed->x;
  }
  do {
    if (rpc_poll (timeout) < 0) {
      return 0;
    }
    if (Q->completed) {
      return Q->completed->x;
    }
  } while (precise_now < timeout);
  return 0;
}
