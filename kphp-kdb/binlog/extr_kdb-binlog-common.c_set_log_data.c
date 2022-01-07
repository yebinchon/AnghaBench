
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_start_pos; } ;


 scalar_t__ LogCopyBuffer ;
 scalar_t__ ULOG_BUFFER_SIZE ;
 TYPE_1__ W ;
 scalar_t__ binlog_check_mode ;
 int binlog_fd ;
 long long binlog_size ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ load_binlog_headers (int) ;
 int log_pos ;
 scalar_t__ malloc (scalar_t__) ;
 int stderr ;

void set_log_data (int logfd, long long logsize) {
  binlog_fd = logfd;
  binlog_size = logsize;
  if (load_binlog_headers (logfd) < 0) {
    fprintf (stderr, "bad binlog headers (fd=%d)\n", logfd);
    exit (1);
  }
  if (binlog_check_mode && !LogCopyBuffer) {
    LogCopyBuffer = malloc (ULOG_BUFFER_SIZE + 16);
  }
  W.log_start_pos = log_pos;
}
