
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int kwrite (int,char*,int) ;
 int print_backtrace () ;

void sigsegv_debug_handler (const int sig) {
  kwrite (2, "SIGSEGV caught, terminating program\n", 36);
  print_backtrace ();
  exit (EXIT_FAILURE);
}
