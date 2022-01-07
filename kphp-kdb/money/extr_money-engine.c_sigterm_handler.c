
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int global_engine_status ;
 scalar_t__ now ;
 int pending_signals ;
 scalar_t__ quit_at ;
 int signal (int,void (*) (int const)) ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  if (global_engine_status != 1) {
    pending_signals |= (1 << SIGTERM);
    return;
  }
  global_engine_status = 2;
  if (!quit_at) {
    quit_at = now + 3;
  }
  signal(SIGTERM, sigterm_handler);
}
