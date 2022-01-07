
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlog_disabled ;
 int create_all_outbound_connections () ;
 int dyn_garbage_collector () ;
 int flush_binlog () ;
 int last_collect_garbage_time ;
 int news_collect_garbage (int) ;
 int now ;
 int update_offsets (int) ;

void cron (void) {
  create_all_outbound_connections ();
  flush_binlog ();
  if (!binlog_disabled) {
    update_offsets (1);
  }
  dyn_garbage_collector ();
  last_collect_garbage_time = now;
  news_collect_garbage (100);
}
