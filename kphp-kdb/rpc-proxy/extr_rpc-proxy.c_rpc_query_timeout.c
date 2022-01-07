
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;


 int delete_rpc_query (struct rpc_query*) ;
 int query_on_alarm (struct rpc_query*) ;

__attribute__((used)) static void rpc_query_timeout (struct rpc_query *q) {
  int t = query_on_alarm (q);
  if (t > 0) { return; }





  delete_rpc_query (q);
}
