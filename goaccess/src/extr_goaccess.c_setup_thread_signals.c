
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_SETMASK ;
 int handle_signal_action ;
 int oldset ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void
setup_thread_signals (void)
{
  struct sigaction act;

  act.sa_handler = handle_signal_action;
  sigemptyset (&act.sa_mask);
  act.sa_flags = 0;

  sigaction (SIGINT, &act, ((void*)0));
  sigaction (SIGPIPE, &act, ((void*)0));
  sigaction (SIGTERM, &act, ((void*)0));


  pthread_sigmask (SIG_SETMASK, &oldset, ((void*)0));
}
