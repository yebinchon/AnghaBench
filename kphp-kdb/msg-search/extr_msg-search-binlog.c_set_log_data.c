
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlog_fd ;
 long long binlog_size ;

void set_log_data (int logfd, long long logsize) {
  binlog_fd = logfd;
  binlog_size = logsize;
}
