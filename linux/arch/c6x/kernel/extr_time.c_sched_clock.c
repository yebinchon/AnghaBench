
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SCHED_CLOCK_SHIFT ;
 int get_cycles () ;
 int sched_clock_multiplier ;

u64 sched_clock(void)
{
 u64 tsc = get_cycles();

 return (tsc * sched_clock_multiplier) >> SCHED_CLOCK_SHIFT;
}
