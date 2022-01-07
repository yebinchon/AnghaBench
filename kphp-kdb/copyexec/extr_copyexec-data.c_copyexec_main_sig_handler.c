
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const SIGINT ;
 int const SIGTERM ;
 int getpid () ;
 long long pending_signals ;
 int sigterm_receiver_pid ;

void copyexec_main_sig_handler (const int sig) {


  pending_signals |= 1LL << sig;
  if (sig == SIGTERM || sig == SIGINT) {
    sigterm_receiver_pid = getpid ();
  }
}
