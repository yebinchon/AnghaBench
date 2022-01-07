
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long pending_signals ;
 int sigint_immediate_handler ;
 int signal (int const,int ) ;

__attribute__((used)) static void sigint_handler (const int sig) {
  pending_signals |= (1LL << sig);
  signal (sig, sigint_immediate_handler);
}
