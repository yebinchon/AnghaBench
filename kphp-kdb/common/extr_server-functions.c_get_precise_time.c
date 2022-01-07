
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int get_utime (int ) ;
 long long precise_time ;
 unsigned long long precise_time_rdtsc ;
 unsigned long long rdtsc () ;

long long get_precise_time (unsigned precision) {
  unsigned long long diff = rdtsc() - precise_time_rdtsc;
  if (diff > precision) {
    get_utime (CLOCK_REALTIME);
  }
  return precise_time;
}
