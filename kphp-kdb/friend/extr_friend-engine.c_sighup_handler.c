
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int fprintf (int ,char*) ;
 int signal (int ,void (*) (int const)) ;
 int stderr ;
 int sync_binlog (int) ;

__attribute__((used)) static void sighup_handler (const int sig) {
  fprintf(stderr, "got SIGHUP.\n");
  sync_binlog (2);
  signal(SIGHUP, sighup_handler);
}
