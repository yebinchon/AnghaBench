
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LE_TIMESTAMP_MAGIC ;
 int alloc_log_event (int ,int ,int ,int ) ;
 int flush_binlog () ;
 scalar_t__ log_last_ts ;

void flush_binlog_ts (void) {
  if (log_last_ts) {
    alloc_log_event (LE_TIMESTAMP_MAGIC, 0, 0, 0);
  }
  flush_binlog();
}
