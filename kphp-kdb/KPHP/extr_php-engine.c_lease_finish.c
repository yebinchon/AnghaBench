
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ has_pending_scripts () ;
 int lease_change_state (int ) ;
 int lease_ready_flag ;
 scalar_t__ lease_state ;
 scalar_t__ lst_finish ;
 int lst_off ;
 int rpc_lease_target ;
 int rpc_main_target ;
 int rpct_lease_stats (int ) ;
 int rpct_stop_ready (int ) ;

int lease_finish (void) {
  assert (lease_state == lst_finish);
  if (has_pending_scripts()) {
    return 0;
  }
  rpct_stop_ready (rpc_lease_target);
  rpct_lease_stats (rpc_main_target);
  lease_change_state (lst_off);
  lease_ready_flag = 1;
  return 1;
}
