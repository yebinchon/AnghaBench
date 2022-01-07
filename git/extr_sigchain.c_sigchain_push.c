
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigchain_signal {scalar_t__* old; int n; int alloc; } ;
typedef int sigchain_fun ;


 int ALLOC_GROW (scalar_t__*,int,int ) ;
 scalar_t__ SIG_ERR ;
 int check_signum (int) ;
 scalar_t__ signal (int,int ) ;
 struct sigchain_signal* signals ;

int sigchain_push(int sig, sigchain_fun f)
{
 struct sigchain_signal *s = signals + sig;
 check_signum(sig);

 ALLOC_GROW(s->old, s->n + 1, s->alloc);
 s->old[s->n] = signal(sig, f);
 if (s->old[s->n] == SIG_ERR)
  return -1;
 s->n++;
 return 0;
}
