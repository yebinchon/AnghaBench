
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_child_status () ;
 int flush_binlog () ;
 scalar_t__ force_write_index ;
 int fork_write_index () ;

void cron (void) {
  flush_binlog();
  if (force_write_index) {
    fork_write_index ();
  }
  check_child_status();
}
