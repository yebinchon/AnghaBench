
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_queue {int dummy; } ;


 int queue_tree ;
 struct rpc_queue** tree_lookup_value_queue (int ,void*) ;

struct rpc_queue *rpc_queue_get (long long id) {
  struct rpc_queue **T = tree_lookup_value_queue (queue_tree, (void *)&id);
  return T ? *T : 0;
}
