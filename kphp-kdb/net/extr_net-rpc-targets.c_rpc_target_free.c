
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_target {int dummy; } ;


 int rpc_target_tree ;
 int tree_delete_rpc_target (int ,struct rpc_target*) ;
 int zfree (struct rpc_target*,int) ;

void rpc_target_free (struct rpc_target *S) {
  rpc_target_tree = tree_delete_rpc_target (rpc_target_tree, S);
  zfree (S, sizeof (*S));
}
