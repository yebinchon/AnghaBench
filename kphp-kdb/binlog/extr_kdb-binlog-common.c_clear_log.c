
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlog_fd ;
 scalar_t__ binlog_size ;
 int clear_read_log () ;
 int clear_write_log () ;

void clear_log (void) {
  clear_read_log ();
  clear_write_log ();


  binlog_fd = -1;
  binlog_size = 0;
}
