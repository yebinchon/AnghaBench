
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int LOG_CRITICAL ;
 int LOG_DEF ;
 int LOG_HISTORY ;
 int LOG_WARNINGS ;
 int const SIGSEGV ;
 int _exit (int ) ;
 int dl_log_dump (int ,int) ;
 int dl_print_backtrace () ;
 int dl_print_backtrace_gdb () ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void dl_runtime_handler (const int sig) {


  fprintf (stderr, "%s caught, terminating program\n", sig == SIGSEGV ? "SIGSEGV" : "SIGABRT");
  fprintf (stderr, "----------------- LOG BEGINS -----------------\n");
  dl_log_dump (LOG_DEF, 0x7f);
  fprintf (stderr, "-----------------  HISTORY   -----------------\n");
  dl_log_dump (LOG_HISTORY, 0x7f);
  fprintf (stderr, "-----------------  WARNINGS  -----------------\n");
  dl_log_dump (LOG_WARNINGS, 0x7f);
  fprintf (stderr, "-----------------  CRITICAL  -----------------\n");
  dl_log_dump (LOG_CRITICAL, 0x7f);
  fprintf (stderr, "----------------- LOG   ENDS -----------------\n");
  dl_print_backtrace();
  dl_print_backtrace_gdb();

  _exit (EXIT_FAILURE);
}
