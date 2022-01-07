
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigchain_signal {int n; int * old; } ;


 scalar_t__ SIG_ERR ;
 int check_signum (int) ;
 scalar_t__ signal (int,int ) ;
 struct sigchain_signal* signals ;

int sigchain_pop(int sig)
{
 struct sigchain_signal *s = signals + sig;
 check_signum(sig);
 if (s->n < 1)
  return 0;

 if (signal(sig, s->old[s->n - 1]) == SIG_ERR)
  return -1;
 s->n--;
 return 0;
}
