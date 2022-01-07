
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {long long qid; } ;


 long long RPC_QUERIES_MASK ;
 long long first_qid ;
 struct rpc_query* queries ;

struct rpc_query *rpc_query_get (long long qid) {
  if (qid < first_qid) { return 0; }
  struct rpc_query *q = &queries[(qid - first_qid) & RPC_QUERIES_MASK];
  return q->qid == qid ? q : 0;
}
