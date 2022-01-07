
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,int,int) ;
 int kwrite (int,char*,int) ;

void print_backtrace (void) {
  void *buffer[64];
  int nptrs = backtrace (buffer, 64);
  kwrite (2, "\n------- Stack Backtrace -------\n", 33);
  backtrace_symbols_fd (buffer, nptrs, 2);
  kwrite (2, "-------------------------------\n", 32);
}
