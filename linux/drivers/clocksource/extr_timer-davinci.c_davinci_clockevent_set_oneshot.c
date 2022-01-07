
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_clockevent {int base; } ;
struct clock_event_device {int dummy; } ;


 int DAVINCI_TIMER_REG_TIM12 ;
 int davinci_clockevent_write (struct davinci_clockevent*,int ,int) ;
 int davinci_tim12_set_oneshot (int ) ;
 struct davinci_clockevent* to_davinci_clockevent (struct clock_event_device*) ;

__attribute__((used)) static int davinci_clockevent_set_oneshot(struct clock_event_device *dev)
{
 struct davinci_clockevent *clockevent = to_davinci_clockevent(dev);

 davinci_clockevent_write(clockevent, DAVINCI_TIMER_REG_TIM12, 0x0);

 davinci_tim12_set_oneshot(clockevent->base);

 return 0;
}
