
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long x; } ;


 double precise_now ;
 TYPE_1__* query_completed ;
 int rpc_poll (double) ;

long long do_rpc_get_any_qid (double timeout) {
  if (query_completed) {
    return query_completed->x;
  }
  if (timeout > precise_now) {
    rpc_poll (timeout);
    if (query_completed) {
      return query_completed->x;
    }
  }
  return -1;
}
