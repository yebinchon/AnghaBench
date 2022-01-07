
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* on_answer ) (void**,void**) ;} ;
struct rpc_query {TYPE_1__ type; int ev; } ;


 int default_on_answer (struct rpc_query*) ;
 int delete_rpc_query (struct rpc_query*) ;
 int remove_event_timer (int *) ;
 int stub1 (void**,void**) ;

void query_on_answer (struct rpc_query *q) {
  remove_event_timer (&q->ev);
  int r = 0;
  if (q->type.on_answer) {
    r = (*q->type.on_answer) (((void **)q->type.on_answer) + 1, (void **)&q);
  } else {
    default_on_answer (q);
  }
  if (r <= 0) {
    delete_rpc_query (q);
  }
}
