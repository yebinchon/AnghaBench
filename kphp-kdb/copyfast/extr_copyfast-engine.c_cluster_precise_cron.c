
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAIN_REPLICA ;
 scalar_t__ MANIFEST ;
 int check_manifest_updates () ;
 int delete_dead_connections () ;
 int request_binlog () ;
 int update_binlog_position () ;

void cluster_precise_cron (void) {
  if (MAIN_REPLICA) {
    update_binlog_position ();
  } else {
    request_binlog ();
  }
  if (MANIFEST) {
    check_manifest_updates ();
  }
  delete_dead_connections ();
}
