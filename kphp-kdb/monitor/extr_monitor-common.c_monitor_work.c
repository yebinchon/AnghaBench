
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ monitor_pid; scalar_t__ rpc_pending; scalar_t__ rescan_binlog_table; scalar_t__ rescan_pid_table; } ;
struct TYPE_4__ {TYPE_1__ e_hdr; } ;


 TYPE_2__* CData ;
 int am_monitor ;
 int assert (int) ;
 scalar_t__ cdata_my_pid ;
 int do_monitor_rpc () ;
 scalar_t__ get_precise_time (int) ;
 unsigned long long last_check_time ;
 scalar_t__ reap_all () ;
 int rescan_binlog_table () ;
 int rescan_pid_table () ;

int monitor_work (void) {
  if (!am_monitor) {

    return 0;
  }
  assert (CData->e_hdr.monitor_pid == cdata_my_pid);
  if (CData->e_hdr.rescan_pid_table) {
    rescan_pid_table ();
  }
  if (CData->e_hdr.rescan_binlog_table) {
    rescan_binlog_table ();
  }
  if (CData->e_hdr.rpc_pending) {
    CData->e_hdr.rpc_pending = 0;
    do_monitor_rpc ();
  }
  if ((unsigned long long) get_precise_time (1000000) - last_check_time > (1 << 28)) {
    if (reap_all () > 0) {
      rescan_pid_table ();
    }
  }
  return 1;
}
