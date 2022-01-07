
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CNT (int ) ;
 int get_utime_monotonic () ;
 int precise_now ;
 long long precise_now_ticks ;
 int precise_now_updates ;
 long long rdtsc () ;

void update_precise_now () {
  long long x = rdtsc ();
  if (x - precise_now_ticks > 1000000) {
    ADD_CNT (precise_now_updates);
    precise_now_ticks = x;
    precise_now = get_utime_monotonic ();
  } else {
    precise_now += 1e-6;
  }
}
