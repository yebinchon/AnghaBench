
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_handler; int sa_mask; } ;
typedef int sa ;


 int SA_RESETHAND ;
 int SA_RESTART ;
 int UV__ERR (int ) ;
 int abort () ;
 int errno ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;
 scalar_t__ sigfillset (int *) ;
 int uv__signal_handler ;

__attribute__((used)) static int uv__signal_register_handler(int signum, int oneshot) {

  struct sigaction sa;


  memset(&sa, 0, sizeof(sa));
  if (sigfillset(&sa.sa_mask))
    abort();
  sa.sa_handler = uv__signal_handler;
  sa.sa_flags = SA_RESTART;
  if (oneshot)
    sa.sa_flags |= SA_RESETHAND;


  if (sigaction(signum, &sa, ((void*)0)))
    return UV__ERR(errno);

  return 0;
}
