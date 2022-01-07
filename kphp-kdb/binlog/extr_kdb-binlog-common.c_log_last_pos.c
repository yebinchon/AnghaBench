
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ binlog_disabled ;
 long long log_cur_pos () ;
 long long log_write_pos () ;

long long log_last_pos (void) {
  return binlog_disabled ? log_cur_pos () : log_write_pos ();
}
