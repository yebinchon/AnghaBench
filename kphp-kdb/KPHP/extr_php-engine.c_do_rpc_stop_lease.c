
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lease_change_state (int ) ;
 scalar_t__ lease_state ;
 int lst_finish ;
 scalar_t__ lst_on ;
 int run_rpc_lease () ;

void do_rpc_stop_lease (void) {
  if (lease_state != lst_on) {
    return;
  }
  lease_change_state (lst_finish);
  run_rpc_lease();
}
