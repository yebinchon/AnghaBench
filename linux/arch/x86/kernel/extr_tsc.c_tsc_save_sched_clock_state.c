
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cyc2ns_suspend ;
 int sched_clock () ;
 int sched_clock_stable () ;

void tsc_save_sched_clock_state(void)
{
 if (!sched_clock_stable())
  return;

 cyc2ns_suspend = sched_clock();
}
