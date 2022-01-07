
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secure_send_extra {int binlog_pos; } ;
struct rpc_query {struct secure_send_extra* extra; } ;


 int delete_binlog_pos (int ,int) ;
 struct rpc_query* get_rpc_query (long long) ;
 int query_on_free (struct rpc_query*) ;

void query_forget (long long qid) {
  struct rpc_query *q = get_rpc_query (qid);
  if (!q) { return; }
  struct secure_send_extra *E = q->extra;
  delete_binlog_pos (E->binlog_pos, 1);
  query_on_free (q);
}
