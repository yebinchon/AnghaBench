
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int dummy; } ;
struct hash_elem_rpc_query {struct rpc_query* x; } ;


 struct hash_elem_rpc_query* hash_lookup_rpc_query (int *,void*) ;
 int rpc_query_hash_table ;

struct rpc_query *get_rpc_query (long long qid) {
  struct hash_elem_rpc_query *T = hash_lookup_rpc_query (&rpc_query_hash_table, (void *)&qid);
  return T ? T->x : 0;
}
