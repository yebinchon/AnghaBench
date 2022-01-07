
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int port; int ip; } ;
typedef TYPE_1__ npid_t ;


 int get_lease_target_by_pid (int ,int ,int *) ;
 int lease_change_state (int ) ;
 TYPE_1__ lease_pid ;
 scalar_t__ lease_state ;
 scalar_t__ lease_stats_cnt ;
 int lease_stats_start_time ;
 scalar_t__ lease_stats_time ;
 scalar_t__ lst_off ;
 int lst_start ;
 int precise_now ;
 int rpc_client_ct ;
 int rpc_lease_target ;
 double rpc_lease_timeout ;
 int rpc_main_target ;
 scalar_t__ rpc_stopped ;
 int run_rpc_lease () ;
 int vkprintf (int ,char*) ;

int do_rpc_start_lease (npid_t pid, double timeout) {
  if (rpc_main_target == -1) {
    return -1;
  }

  if (lease_state != lst_off) {
    return -1;
  }
  int target_fd = get_lease_target_by_pid (pid.ip, pid.port, &rpc_client_ct);
  if (target_fd == -1) {
    return -1;
  }
  if (target_fd == rpc_main_target) {
    vkprintf (0, "can't lease to itself\n");
    return -1;
  }
  if (rpc_stopped) {
    return -1;
  }

  rpc_lease_target = target_fd;
  rpc_lease_timeout = timeout;
  lease_pid = pid;

  lease_stats_cnt = 0;
  lease_stats_start_time = precise_now;
  lease_stats_time = 0;

  lease_change_state (lst_start);
  run_rpc_lease();

  return 0;
}
