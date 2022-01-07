
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_CTRL ;
 unsigned long TIMER_CTRL_ENABLE ;
 scalar_t__ TIMER_LOAD ;
 scalar_t__ clkevt_base ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int clkevt_set_next_event(unsigned long next, struct clock_event_device *evt)
{
 unsigned long ctrl = readl(clkevt_base + TIMER_CTRL);

 writel(ctrl & ~TIMER_CTRL_ENABLE, clkevt_base + TIMER_CTRL);
 writel(next, clkevt_base + TIMER_LOAD);
 writel(ctrl | TIMER_CTRL_ENABLE, clkevt_base + TIMER_CTRL);

 return 0;
}
