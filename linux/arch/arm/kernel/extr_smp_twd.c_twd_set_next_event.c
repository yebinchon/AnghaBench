
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TWD_TIMER_CONTROL ;
 unsigned long TWD_TIMER_CONTROL_ENABLE ;
 scalar_t__ TWD_TIMER_COUNTER ;
 unsigned long readl_relaxed (scalar_t__) ;
 scalar_t__ twd_base ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int twd_set_next_event(unsigned long evt,
   struct clock_event_device *unused)
{
 unsigned long ctrl = readl_relaxed(twd_base + TWD_TIMER_CONTROL);

 ctrl |= TWD_TIMER_CONTROL_ENABLE;

 writel_relaxed(evt, twd_base + TWD_TIMER_COUNTER);
 writel_relaxed(ctrl, twd_base + TWD_TIMER_CONTROL);

 return 0;
}
