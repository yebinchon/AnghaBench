
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_clocktype_t ;
typedef int uint64_t ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int clock_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_COARSE ;
 scalar_t__ UV_CLOCK_FAST ;
 scalar_t__ clock_getres (int,struct timespec*) ;
 scalar_t__ clock_gettime (int,struct timespec*) ;

uint64_t uv__hrtime(uv_clocktype_t type) {
  static clock_t fast_clock_id = -1;
  struct timespec t;
  clock_t clock_id;
  if (type == UV_CLOCK_FAST && fast_clock_id == -1) {
    if (clock_getres(CLOCK_MONOTONIC_COARSE, &t) == 0 &&
        t.tv_nsec <= 1 * 1000 * 1000) {
      fast_clock_id = CLOCK_MONOTONIC_COARSE;
    } else {
      fast_clock_id = CLOCK_MONOTONIC;
    }
  }

  clock_id = CLOCK_MONOTONIC;
  if (type == UV_CLOCK_FAST)
    clock_id = fast_clock_id;

  if (clock_gettime(clock_id, &t))
    return 0;

  return t.tv_sec * (uint64_t) 1e9 + t.tv_nsec;
}
