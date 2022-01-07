
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int TIMER1_EN ;
 scalar_t__ TIMER1_RELOAD ;
 int TIMER1_RELOAD_EN ;
 scalar_t__ TIMER1_VAL ;
 scalar_t__ TIMER_CTRL ;
 int atomic_io_modify (scalar_t__,int,int) ;
 scalar_t__ ticks_per_jiffy ;
 scalar_t__ timer_base ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int orion_clkevt_set_periodic(struct clock_event_device *dev)
{

 writel(ticks_per_jiffy - 1, timer_base + TIMER1_RELOAD);
 writel(ticks_per_jiffy - 1, timer_base + TIMER1_VAL);
 atomic_io_modify(timer_base + TIMER_CTRL,
    TIMER1_RELOAD_EN | TIMER1_EN,
    TIMER1_RELOAD_EN | TIMER1_EN);
 return 0;
}
