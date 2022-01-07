
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ULOG_BUFFER_SIZE ;
 int compute_uncommitted_log_bytes () ;
 int flush_binlog_forced (int ) ;

__attribute__((used)) static inline void flushing_binlog_check (void) {
  if (compute_uncommitted_log_bytes () > ((ULOG_BUFFER_SIZE) >> 1)) {
    flush_binlog_forced (0);
  }
}
