
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_id {int dummy; } ;
struct rpc_target {scalar_t__ inbound_num; struct connection* last; struct connection* first; scalar_t__ target; struct process_id PID; } ;
struct connection {int dummy; } ;


 int lrand48 () ;
 int rpc_target_tree ;
 int tree_insert_rpc_target (int ,struct rpc_target*,int ) ;
 struct rpc_target* zmalloc (int) ;

struct rpc_target *rpc_target_alloc (struct process_id PID) {
  struct rpc_target *S = zmalloc (sizeof (*S));
  S->PID = PID;
  S->target = 0;
  S->first = S->last = (struct connection *)S;
  S->inbound_num = 0;
  rpc_target_tree = tree_insert_rpc_target (rpc_target_tree, S, lrand48 ());
  return S;
}
