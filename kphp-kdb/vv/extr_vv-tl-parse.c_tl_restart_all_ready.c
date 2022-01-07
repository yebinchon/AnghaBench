
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_aio_query_restart_all_finished () ;
 int tl_binlog_wait_restart_all_finished () ;
 int tl_binlog_wait_time_restart_all_finished () ;

void tl_restart_all_ready (void) {
  tl_binlog_wait_time_restart_all_finished ();
  tl_binlog_wait_restart_all_finished ();
  tl_aio_query_restart_all_finished ();
}
