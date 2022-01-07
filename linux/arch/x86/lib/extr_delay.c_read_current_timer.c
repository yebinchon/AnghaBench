
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ delay_fn ;
 scalar_t__ delay_tsc ;
 unsigned long rdtsc () ;

int read_current_timer(unsigned long *timer_val)
{
 if (delay_fn == delay_tsc) {
  *timer_val = rdtsc();
  return 0;
 }
 return -1;
}
