
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int kprintf (char*) ;
 int print_backtrace () ;
 int unlock_pid_file () ;

__attribute__((used)) static void sigabrt_handler (const int sig) {
  kprintf ("SIGABRT caught, terminating program\n");
  print_backtrace ();
  unlock_pid_file ();
  exit (EXIT_FAILURE);
}
