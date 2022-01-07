
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int print_backtrace () ;
 int write (int,char*,int) ;

void sigabrt_debug_handler (const int sig) {
  write (2, "SIGABRT caught, terminating program\n", 36);
  print_backtrace ();
  exit (EXIT_FAILURE);
}
