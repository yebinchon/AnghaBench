
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_CRITICAL ;
 int LOG_DEF ;
 int LOG_HISTORY ;
 int LOG_WARNINGS ;
 int SIGABRT ;
 int SIGSEGV ;
 int dl_log_set_verb (int ,int,int) ;
 int dl_runtime_handler ;
 int dl_signal (int ,int ) ;

void dl_set_debug_handlers (void) {

  dl_signal (SIGSEGV, dl_runtime_handler);
  dl_signal (SIGABRT, dl_runtime_handler);





  dl_log_set_verb (LOG_DEF, 0, 3);

  dl_log_set_verb (LOG_HISTORY, 0, 0x7F);
  dl_log_set_verb (LOG_WARNINGS, 0, 9);
  dl_log_set_verb (LOG_CRITICAL, 0, 9);
}
