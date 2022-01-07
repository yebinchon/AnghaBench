
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int flush_binlog_last () ;
 int fprintf (int ,char*) ;
 int stderr ;
 int sync_binlog (int) ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  fprintf (stderr, "SIGTERM handled.\n");
  flush_binlog_last();
  sync_binlog (2);
  exit (EXIT_SUCCESS);
}
