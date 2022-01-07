
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_IGN ;
 int signal (int const,int ) ;
 int transaction_interrupting_signal ;

__attribute__((used)) static void copyexec_transaction_process_sigint_handler (const int sig) {
  if (!transaction_interrupting_signal) {
    transaction_interrupting_signal = sig;
  }
  signal (sig, SIG_IGN);
}
