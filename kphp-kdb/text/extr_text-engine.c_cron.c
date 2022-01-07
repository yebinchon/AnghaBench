
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adjust_some_users () ;
 int flush_binlog () ;

void cron (void) {
  flush_binlog();
  adjust_some_users ();
}
