
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* __cluster_count ;
 int dump_cluster_id ;
 int rpc_cluster_tree ;
 scalar_t__* tl_store_get_ptr (int) ;
 int tree_act_rpc_cluster (int ,int ) ;

void tl_dump_clusters (void) {
  __cluster_count = tl_store_get_ptr (4);
  *__cluster_count = 0;
  tree_act_rpc_cluster (rpc_cluster_tree, dump_cluster_id);
}
