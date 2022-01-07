
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int fprintf (int ,char*) ;
 int reopen_logs () ;
 int signal (int ,void (*) (int const)) ;
 int stderr ;

__attribute__((used)) static void sigusr1_handler (const int sig) {
  fprintf (stderr, "got SIGUSR1, rotate logs.\n");
  reopen_logs();
  signal (SIGUSR1, sigusr1_handler);
}
