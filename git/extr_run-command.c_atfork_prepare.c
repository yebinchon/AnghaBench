
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atfork_state {int cs; int old; } ;
typedef int sigset_t ;


 int CHECK_BUG (int ,char*) ;
 int PTHREAD_CANCEL_DISABLE ;
 int SIG_SETMASK ;
 int die_errno (char*) ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_sigmask (int ,int *,int *) ;
 scalar_t__ sigfillset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void atfork_prepare(struct atfork_state *as)
{
 sigset_t all;

 if (sigfillset(&all))
  die_errno("sigfillset");




 CHECK_BUG(pthread_sigmask(SIG_SETMASK, &all, &as->old),
  "blocking all signals");
 CHECK_BUG(pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, &as->cs),
  "disabling cancellation");

}
