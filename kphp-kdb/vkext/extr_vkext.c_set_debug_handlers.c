
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGSEGV ;
 int sigabrt_debug_handler ;
 int signal (int ,int ) ;
 int sigsegv_debug_handler ;

void set_debug_handlers (void) {
  signal (SIGSEGV, sigsegv_debug_handler);
  signal (SIGABRT, sigabrt_debug_handler);
}
