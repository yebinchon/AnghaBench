
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_clockevent {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int DAVINCI_TIMER_REG_PRD12 ;
 int DAVINCI_TIMER_REG_TIM12 ;
 int davinci_clockevent_set_oneshot (struct clock_event_device*) ;
 int davinci_clockevent_shutdown (struct clock_event_device*) ;
 int davinci_clockevent_write (struct davinci_clockevent*,int ,unsigned long) ;
 struct davinci_clockevent* to_davinci_clockevent (struct clock_event_device*) ;

__attribute__((used)) static int
davinci_clockevent_set_next_event_std(unsigned long cycles,
          struct clock_event_device *dev)
{
 struct davinci_clockevent *clockevent = to_davinci_clockevent(dev);

 davinci_clockevent_shutdown(dev);

 davinci_clockevent_write(clockevent, DAVINCI_TIMER_REG_TIM12, 0x0);
 davinci_clockevent_write(clockevent, DAVINCI_TIMER_REG_PRD12, cycles);

 davinci_clockevent_set_oneshot(dev);

 return 0;
}
