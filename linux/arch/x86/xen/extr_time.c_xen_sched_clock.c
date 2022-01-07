
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ xen_clocksource_read () ;
 scalar_t__ xen_sched_clock_offset ;

__attribute__((used)) static u64 xen_sched_clock(void)
{
 return xen_clocksource_read() - xen_sched_clock_offset;
}
