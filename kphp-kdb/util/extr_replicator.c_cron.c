
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_children_status () ;
 int create_all_outbound_connections () ;
 int rescan_pid_table () ;

void cron (void) {
  rescan_pid_table ();
  create_all_outbound_connections ();
  check_children_status ();

}
