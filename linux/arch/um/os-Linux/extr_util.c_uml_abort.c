
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGABRT ;
 int SIG_UNBLOCK ;
 int exit (int) ;
 int fflush (int *) ;
 int getpid () ;
 scalar_t__ kill (int ,int ) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int ) ;

__attribute__((used)) static inline void __attribute__ ((noreturn)) uml_abort(void)
{
 sigset_t sig;

 fflush(((void*)0));

 if (!sigemptyset(&sig) && !sigaddset(&sig, SIGABRT))
  sigprocmask(SIG_UNBLOCK, &sig, 0);

 for (;;)
  if (kill(getpid(), SIGABRT) < 0)
   exit(127);
}
