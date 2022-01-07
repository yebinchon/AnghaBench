
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int SIGSEGV ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sigsegv_handler ;

__attribute__((used)) static void
setup_signal_handlers (void)
{
  struct sigaction act;

  sigemptyset (&act.sa_mask);
  act.sa_flags = 0;
  act.sa_handler = sigsegv_handler;

  sigaction (SIGSEGV, &act, ((void*)0));
}
