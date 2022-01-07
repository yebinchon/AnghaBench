
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 scalar_t__ check_is_running (int *) ;
 scalar_t__ interrupted_by_cancelled () ;
 int nanosleep (struct timespec*,int *) ;
 int transaction_interrupting_signal ;

__attribute__((used)) static int transaction_wait (transaction_t *T) {
  while (check_is_running (T) && !transaction_interrupting_signal) {
    if (interrupted_by_cancelled ()) {
      return 0;
    }
    struct timespec t;
    t.tv_sec = 0;
    t.tv_nsec = 50000000;
    nanosleep (&t, ((void*)0));
  }
  return 0;
}
