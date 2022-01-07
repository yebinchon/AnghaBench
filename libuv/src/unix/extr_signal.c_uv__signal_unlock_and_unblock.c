
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int abort () ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 scalar_t__ uv__signal_unlock () ;

__attribute__((used)) static void uv__signal_unlock_and_unblock(sigset_t* saved_sigmask) {
  if (uv__signal_unlock())
    abort();

  if (pthread_sigmask(SIG_SETMASK, saved_sigmask, ((void*)0)))
    abort();
}
