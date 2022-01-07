
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int kwrite (int,char const*,int) ;
 int print_backtrace () ;
 int unlock_pid_file () ;

void sigabrt_handler (const int sig) {
  static const char message[] = "SIGABRT caught, terminating program\n";
  kwrite (2, message, sizeof (message) - (size_t)1);
  print_backtrace ();
  unlock_pid_file ();
  exit (EXIT_FAILURE);
}
