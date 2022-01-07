
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ binlog_mode_on ;
 int dyn_garbage_collector () ;
 int flush_cbinlog (int ) ;
 int write_index () ;

void cron (void) {
  dyn_garbage_collector ();
  if (binlog_mode_on) {
    flush_cbinlog (0);
    write_index ();
  }
}
