
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; scalar_t__ tv_nsec; } ;


 int ADD_CNT (int ) ;
 int CLOCK_MONOTONIC ;
 int END_TICKS (int ) ;
 int START_TICKS (int ) ;
 int assert (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int utime ;

__attribute__((used)) static double get_utime_monotonic (void) {
  ADD_CNT (utime);
  START_TICKS (utime);
  struct timespec T;
  assert (clock_gettime(CLOCK_MONOTONIC, &T) >= 0);
  END_TICKS (utime);
  return T.tv_sec + (double) T.tv_nsec * 1e-9;
}
