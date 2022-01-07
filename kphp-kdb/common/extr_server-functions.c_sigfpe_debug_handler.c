
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int kwrite (int,char*,int) ;
 int print_backtrace () ;

void sigfpe_debug_handler (const int sig) {
  kwrite (2, "SIGFPE caught, terminating program\n", 35);
  print_backtrace ();
  exit (EXIT_FAILURE);
}
