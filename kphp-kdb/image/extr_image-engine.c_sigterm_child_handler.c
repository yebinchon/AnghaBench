
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int kwrite (int,char*,int) ;
 int print_backtrace () ;
 int raise (int const) ;
 int signal (int const,int ) ;

void sigterm_child_handler (const int sig) {
  kwrite (2, "child caught SIGTERM\n", 21);
  print_backtrace ();
  signal (sig, SIG_DFL);
  raise (sig);
}
