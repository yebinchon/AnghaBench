
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_binlog_forced (int) ;
 int flush_binlog_ts () ;
 scalar_t__ log_cur_pos () ;
 scalar_t__ log_readto_pos ;

void flush_binlog_last (void) {
  if (log_cur_pos () != log_readto_pos) {
    flush_binlog_ts ();
  } else {
    flush_binlog_forced (1);
  }
}
