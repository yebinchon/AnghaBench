
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int global_engine_status ;
 scalar_t__ now ;
 int pending_signals ;
 scalar_t__ quit_at ;
 int signal (int,void (*) (int const)) ;

__attribute__((used)) static void sigint_handler (const int sig) {
  if (global_engine_status != 1) {
    pending_signals |= (1 << SIGINT);
    return;
  }
  global_engine_status = 2;
  if (!quit_at) {
    quit_at = now + 3;
  }
  signal(SIGINT, sigint_handler);
}
