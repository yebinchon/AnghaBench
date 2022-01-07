
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atfork_state {int old; int cs; } ;


 int CHECK_BUG (int ,char*) ;
 int SIG_SETMASK ;
 int die_errno (char*) ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_sigmask (int ,int *,int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void atfork_parent(struct atfork_state *as)
{




 CHECK_BUG(pthread_setcancelstate(as->cs, ((void*)0)),
  "re-enabling cancellation");
 CHECK_BUG(pthread_sigmask(SIG_SETMASK, &as->old, ((void*)0)),
  "restoring signal mask");

}
