
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* on_alarm ) (void**,void**) ;} ;
struct rpc_query {TYPE_1__ type; } ;


 int default_on_alarm (struct rpc_query*) ;
 int stub1 (void**,void**) ;

int query_on_alarm (struct rpc_query *q) {
  if (q->type.on_alarm) {
    return (*q->type.on_alarm) (((void **)q->type.on_alarm) + 1, (void **)&q);
  } else {
    default_on_alarm (q);
    return 0;
  }
}
