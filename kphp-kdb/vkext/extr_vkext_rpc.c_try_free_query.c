
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;


 int rpc_query_delete (struct rpc_query*) ;
 struct rpc_query* rpc_query_get (long long) ;

void try_free_query (long long qid) {
  struct rpc_query *q = rpc_query_get (qid);
  if (q) {
    rpc_query_delete (q);
  }
}
