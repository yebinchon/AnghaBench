
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int timedelta_t ;


 int timer_start (int *) ;
 int timer_stop (int *) ;

__attribute__((used)) static inline void
time_func(timedelta_t *timer, uint64_t nwarmup, uint64_t niter,
    void (*func)(void)) {
 uint64_t i;

 for (i = 0; i < nwarmup; i++) {
  func();
 }
 timer_start(timer);
 for (i = 0; i < niter; i++) {
  func();
 }
 timer_stop(timer);
}
