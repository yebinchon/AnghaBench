
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster {int dummy; } ;


 int rpc_cluster_tree ;
 struct rpc_cluster** tree_lookup_value_rpc_cluster (int ,void*) ;

struct rpc_cluster *get_cluster_by_id (long long id) {
  struct rpc_cluster **T = tree_lookup_value_rpc_cluster (rpc_cluster_tree, (void *)&id);
  return T ? *T : 0;
}
