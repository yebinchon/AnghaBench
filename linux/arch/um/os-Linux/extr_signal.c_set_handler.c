
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int * sa_restorer; int sa_mask; int sa_sigaction; } ;
typedef int sigset_t ;


 int SA_NODEFER ;
 int SA_ONSTACK ;
 int SA_RESTART ;
 int SA_SIGINFO ;
 int SIGALRM ;
 int SIGIO ;
 int SIGSEGV ;
 int SIGWINCH ;
 int SIG_UNBLOCK ;
 int errno ;
 int hard_handler ;
 int panic (char*,int ) ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

void set_handler(int sig)
{
 struct sigaction action;
 int flags = SA_SIGINFO | SA_ONSTACK;
 sigset_t sig_mask;

 action.sa_sigaction = hard_handler;


 sigemptyset(&action.sa_mask);
 sigaddset(&action.sa_mask, SIGIO);
 sigaddset(&action.sa_mask, SIGWINCH);
 sigaddset(&action.sa_mask, SIGALRM);

 if (sig == SIGSEGV)
  flags |= SA_NODEFER;

 if (sigismember(&action.sa_mask, sig))
  flags |= SA_RESTART;

 action.sa_flags = flags;
 action.sa_restorer = ((void*)0);
 if (sigaction(sig, &action, ((void*)0)) < 0)
  panic("sigaction failed - errno = %d\n", errno);

 sigemptyset(&sig_mask);
 sigaddset(&sig_mask, sig);
 if (sigprocmask(SIG_UNBLOCK, &sig_mask, ((void*)0)) < 0)
  panic("sigprocmask failed - errno = %d\n", errno);
}
