
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int EINVAL ;
 int pthread_sigmask (int,int const*,int *) ;
 scalar_t__ sigprocmask (int,int const*,int *) ;

int uv__pthread_sigmask(int how, const sigset_t* set, sigset_t* oset) {
  static int workaround;
  int err;

  if (workaround) {
    return sigprocmask(how, set, oset);
  } else {
    err = pthread_sigmask(how, set, oset);
    if (err) {
      if (err == EINVAL && sigprocmask(how, set, oset) == 0) {
        workaround = 1;
        return 0;
      } else {
        return -1;
      }
    }
  }

  return 0;
}
