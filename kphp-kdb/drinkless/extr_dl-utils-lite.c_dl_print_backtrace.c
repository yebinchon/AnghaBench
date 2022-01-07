
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,int,int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void dl_print_backtrace (void) {
  void *buffer[64];
  int nptrs = backtrace (buffer, 64);
  fprintf (stderr, "\n------- Stack Backtrace -------\n");
  backtrace_symbols_fd (buffer, nptrs, 2);
  fprintf (stderr, "-------------------------------\n");
}
