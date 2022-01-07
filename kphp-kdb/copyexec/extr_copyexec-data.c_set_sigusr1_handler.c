
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;


 int SIGUSR1 ;
 int assert (int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sigusr1_handler ;

void set_sigusr1_handler (void) {
  struct sigaction act;
  sigset_t signal_set;
  sigemptyset (&signal_set);
  act.sa_handler = sigusr1_handler;
  act.sa_mask = signal_set;
  act.sa_flags = 0;
  assert (!sigaction (SIGUSR1, &act, ((void*)0)));
}
