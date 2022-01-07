
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_rpc_target {struct rpc_target* x; } ;
struct process_id {scalar_t__ ip; } ;
struct rpc_target {struct process_id PID; } ;


 int assert (struct process_id*) ;
 int rpc_target_tree ;
 scalar_t__ rpc_targets_cur_host ;
 int st_update_host () ;
 struct tree_rpc_target* tree_lookup_rpc_target (int ,struct rpc_target*) ;

struct rpc_target *rpc_target_lookup (struct process_id *PID) {
  assert (PID);
  st_update_host ();
  static struct rpc_target t;
  t.PID = *PID;
  if (rpc_targets_cur_host && !t.PID.ip) {
    t.PID.ip = rpc_targets_cur_host;
  }
  struct tree_rpc_target *T = tree_lookup_rpc_target (rpc_target_tree, &t);
  return T ? T->x : 0;
}
