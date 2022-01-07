
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long pending_signals ;

void copyexec_results_sig_handler (const int sig) {


  pending_signals |= 1LL << sig;
}
