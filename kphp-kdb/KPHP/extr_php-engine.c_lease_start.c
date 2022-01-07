
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ has_pending_scripts () ;
 int lease_change_state (int ) ;
 int lease_ready_flag ;
 scalar_t__ lease_state ;
 int lst_finish ;
 int lst_on ;
 scalar_t__ lst_start ;
 scalar_t__ rpc_stopped ;

int lease_start (void) {
  assert (lease_state == lst_start);
  if (has_pending_scripts()) {
    return 0;
  }
  lease_change_state (lst_on);
  lease_ready_flag = 1;
  if (rpc_stopped) {
    lease_change_state (lst_finish);
  }
  return 1;
}
