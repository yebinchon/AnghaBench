
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;
typedef int rlim_t ;


 int PTHREAD_STACK_MIN ;
 int RLIMIT_STACK ;
 int RLIM_INFINITY ;
 int abort () ;
 scalar_t__ getpagesize () ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

__attribute__((used)) static size_t thread_stack_size(void) {

  struct rlimit lim;

  if (getrlimit(RLIMIT_STACK, &lim))
    abort();

  if (lim.rlim_cur != RLIM_INFINITY) {

    lim.rlim_cur -= lim.rlim_cur % (rlim_t) getpagesize();
    if (lim.rlim_cur >= 8192)
      if (lim.rlim_cur >= PTHREAD_STACK_MIN)
        return lim.rlim_cur;
  }







  return 2 << 20;

}
