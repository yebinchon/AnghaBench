
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* on_free ) (void**,void**) ;} ;
struct rpc_query {TYPE_1__ type; } ;


 int default_on_free (struct rpc_query*) ;
 int stub1 (void**,void**) ;

void query_on_free (struct rpc_query *q) {
  if (q->type.on_free) {
    (*q->type.on_free) (((void **)q->type.on_free) + 1, (void **)&q);
  } else {
    default_on_free (q);
  }
}
