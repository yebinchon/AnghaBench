
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_binlog_forced (int ) ;
 int scan_delay_queues () ;

void cron (void) {
  flush_binlog_forced (0);
  scan_delay_queues ();
  flush_binlog_forced (0);
}
