
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_sched_clock_stable () ;
 int clocksource_mark_unstable (int *) ;
 int clocksource_tsc ;
 int clocksource_tsc_early ;
 int disable_sched_clock_irqtime () ;
 int pr_info (char*,char*) ;
 int tsc_unstable ;
 scalar_t__ using_native_sched_clock () ;

void mark_tsc_unstable(char *reason)
{
 if (tsc_unstable)
  return;

 tsc_unstable = 1;
 if (using_native_sched_clock())
  clear_sched_clock_stable();
 disable_sched_clock_irqtime();
 pr_info("Marking TSC unstable due to %s\n", reason);

 clocksource_mark_unstable(&clocksource_tsc_early);
 clocksource_mark_unstable(&clocksource_tsc);
}
