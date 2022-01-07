
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int exit (int) ;
 int flush_binlog_last () ;
 scalar_t__ getpid () ;
 scalar_t__ main_pid ;
 int sync_binlog (int) ;

__attribute__((used)) static void copyexec_abort (void) {
  assert (main_pid == getpid ());
  flush_binlog_last ();
  sync_binlog (2);
  exit (1);
}
