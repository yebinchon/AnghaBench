
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef int sa ;


 int SIG_DFL ;
 int abort () ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;

__attribute__((used)) static void uv__signal_unregister_handler(int signum) {

  struct sigaction sa;

  memset(&sa, 0, sizeof(sa));
  sa.sa_handler = SIG_DFL;





  if (sigaction(signum, &sa, ((void*)0)))
    abort();
}
