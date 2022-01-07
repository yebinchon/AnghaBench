
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const SIGINT ;
 int const SIGTERM ;
 long long pending_signals ;
 int sigint_immediate_handler ;
 int signal (int const,int ) ;
 int sigterm_immediate_handler ;

__attribute__((used)) static void main_sig_handler (const int sig) {


  pending_signals |= 1LL << sig;
  if (sig == SIGINT) {
    signal (SIGINT, sigint_immediate_handler);
  }
  if (sig == SIGTERM) {
    signal (SIGTERM, sigterm_immediate_handler);
  }
}
