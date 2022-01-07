
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_clocktype_t ;
typedef int uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int NANOSEC ;
 int clock_gettime (int ,struct timespec*) ;

uint64_t uv__hrtime(uv_clocktype_t type) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return (((uint64_t) ts.tv_sec) * NANOSEC + ts.tv_nsec);
}
