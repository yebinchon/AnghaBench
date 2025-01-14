
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_CTRL ;
 unsigned long TIMER_CTRL_32BIT ;
 unsigned long TIMER_CTRL_ENABLE ;
 unsigned long TIMER_CTRL_IE ;
 unsigned long TIMER_CTRL_ONESHOT ;
 scalar_t__ TIMER_LOAD ;
 scalar_t__ clkevt_base ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int sp804_set_next_event(unsigned long next,
 struct clock_event_device *evt)
{
 unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
        TIMER_CTRL_ONESHOT | TIMER_CTRL_ENABLE;

 writel(next, clkevt_base + TIMER_LOAD);
 writel(ctrl, clkevt_base + TIMER_CTRL);

 return 0;
}
