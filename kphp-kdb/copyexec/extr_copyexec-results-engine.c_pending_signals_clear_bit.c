
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const sigset_t ;


 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int assert (int) ;
 long long pending_signals ;
 int sigprocmask (int ,int const*,int const*) ;

__attribute__((used)) static void pending_signals_clear_bit (const sigset_t *ss, const int sig) {
  sigset_t old;
  int r = sigprocmask (SIG_BLOCK, ss, &old);
  assert (!r);
  pending_signals &= ~(1LL << sig);
  r = sigprocmask (SIG_SETMASK, &old, ((void*)0));
  assert (!r);
}
