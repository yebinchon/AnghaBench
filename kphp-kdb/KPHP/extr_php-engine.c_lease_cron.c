
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lease_change_state (int ) ;
 scalar_t__ lease_ready_flag ;
 scalar_t__ lease_state ;
 int lst_finish ;
 scalar_t__ lst_on ;
 scalar_t__ precise_now ;
 scalar_t__ rpc_lease_timeout ;
 int run_rpc_lease () ;

void lease_cron (void) {
  int need = 0;

  if (lease_state == lst_on && rpc_lease_timeout < precise_now) {
    lease_change_state (lst_finish);
    need = 1;
  }
  if (lease_ready_flag) {
    need = 1;
  }
  if (need) {
    run_rpc_lease();
  }
}
