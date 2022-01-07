
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_child_status () ;
 int create_all_outbound_connections () ;
 int dyn_garbage_collector () ;
 scalar_t__ force_write_index ;
 int fork_write_index () ;
 int fsync_step () ;
 int storage_volumes_relax_astat () ;

void cron (void) {
  storage_volumes_relax_astat ();
  create_all_outbound_connections ();
  fsync_step ();

  if (force_write_index) {
    fork_write_index ();
  }
  check_child_status ();
  dyn_garbage_collector ();
}
