
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int exit (int) ;
 int finish_all () ;
 int flush_binlog_last () ;
 int kwrite (int,char const*,int) ;
 int sync_binlog (int) ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  const char message[] = "SIGTERM handled.\nOnly part of dump imported\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  flush_binlog_last ();
  sync_binlog (2);
  finish_all ();
  exit (1);
}
