
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sa ;


 int SIGINT ;
 int SIGPIPE ;
 int SIGPOLL ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 int memset (struct sigaction*,int ,int) ;
 int set_debug_handlers () ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigint_handler ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int sigusr2_handler ;

__attribute__((used)) static void signals_init (void) {
  set_debug_handlers ();
  struct sigaction sa;
  memset (&sa, 0, sizeof (sa));
  sa.sa_handler = sigint_handler;
  sigemptyset (&sa.sa_mask);
  sigaddset (&sa.sa_mask, SIGTERM);
  sigaction (SIGINT, &sa, ((void*)0));

  sa.sa_handler = sigterm_handler;
  sigemptyset (&sa.sa_mask);
  sigaddset (&sa.sa_mask, SIGINT);
  sigaction (SIGTERM, &sa, ((void*)0));

  sa.sa_handler = SIG_IGN;
  sigaction (SIGPIPE, &sa, ((void*)0));
  sigaction (SIGPOLL, &sa, ((void*)0));
  sigaction (SIGUSR1, &sa, ((void*)0));

  sa.sa_handler = sigusr1_handler;
  sigemptyset (&sa.sa_mask);
  sigaction (SIGUSR1, &sa, ((void*)0));

  sa.sa_handler = sigusr2_handler;
  sigemptyset (&sa.sa_mask);
  sigaction (SIGUSR2, &sa, ((void*)0));

}
