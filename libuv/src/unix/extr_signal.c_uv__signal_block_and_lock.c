
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int abort () ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 scalar_t__ sigfillset (int *) ;
 scalar_t__ uv__signal_lock () ;

__attribute__((used)) static void uv__signal_block_and_lock(sigset_t* saved_sigmask) {
  sigset_t new_mask;

  if (sigfillset(&new_mask))
    abort();

  if (pthread_sigmask(SIG_SETMASK, &new_mask, saved_sigmask))
    abort();

  if (uv__signal_lock())
    abort();
}
