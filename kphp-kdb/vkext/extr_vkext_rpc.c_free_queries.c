
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qid; } ;


 int max_query_id ;
 TYPE_1__* queries ;
 int rpc_query_delete (TYPE_1__*) ;

void free_queries (void) {
  int i;

  for (i = 0; i < max_query_id; i++) if (queries[i].qid) {
    rpc_query_delete (&queries[i]);
  }
}
