
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int ev; } ;


 int active_queries ;
 int hash_delete_rpc_query (int *,struct rpc_query*) ;
 int remove_event_timer (int *) ;
 int rpc_query_hash_table ;
 int zfree (struct rpc_query*,int) ;

void default_on_free (struct rpc_query *q) {
  remove_event_timer (&q->ev);
  hash_delete_rpc_query (&rpc_query_hash_table, q);
  zfree (q, sizeof (*q));
  active_queries --;
}
