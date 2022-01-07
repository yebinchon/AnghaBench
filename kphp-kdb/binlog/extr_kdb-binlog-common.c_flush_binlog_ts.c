
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_log_crc32_event () ;
 int alloc_log_timestamp_event () ;
 scalar_t__ binlog_disabled ;
 int binlogname ;
 int disable_crc32 ;
 int disable_ts ;
 int flush_binlog_forced (int) ;
 scalar_t__ log_last_ts ;

void flush_binlog_ts (void) {
  if (!binlogname || binlog_disabled) {
    return;
  }
  if (log_last_ts) {
    if (!(disable_crc32 & 1)) {
      alloc_log_crc32_event ();
    } else if (!(disable_ts & 1)) {
      alloc_log_timestamp_event ();
    }
  }
  flush_binlog_forced (1);
}
