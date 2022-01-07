
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int const SIGSEGV ;
 int _exit (int ) ;
 int dl_print_backtrace () ;
 int dl_print_backtrace_gdb () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void runtime_handler (const int sig) {
  fprintf (stderr, "%s caught, terminating program\n", sig == SIGSEGV ? "SIGSEGV" : "SIGABRT");
  dl_print_backtrace();
  dl_print_backtrace_gdb();
  _exit (EXIT_FAILURE);
}
