
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogBuffer ;
 int R ;
 int ULOG_BUFFER_SIZE ;
 scalar_t__ ZLOG_BUFFER_SIZE ;
 scalar_t__ binlog_zipped ;
 int clear_one_log (int *,int ,int) ;

void clear_read_log (void) {
  int readlog_size = ULOG_BUFFER_SIZE;
  if (binlog_zipped) {
    readlog_size += ZLOG_BUFFER_SIZE;
  }
  clear_one_log (&R, LogBuffer, readlog_size);
}
