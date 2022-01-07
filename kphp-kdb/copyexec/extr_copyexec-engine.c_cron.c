
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aux_binlog_check_updates () ;
 int flush_binlog () ;
 int interrupted_by_signal () ;
 int transaction_check_auto_status () ;
 int transaction_check_child_status () ;

void cron (void) {
  flush_binlog ();

  if (!interrupted_by_signal ()) {
    aux_binlog_check_updates ();
  }
  transaction_check_child_status ();
  transaction_check_auto_status ();
}
