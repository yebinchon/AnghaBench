
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_clockevent {int cmp_off; } ;
struct clock_event_device {int dummy; } ;


 int DAVINCI_TIMER_REG_TIM12 ;
 unsigned int davinci_clockevent_read (struct davinci_clockevent*,int ) ;
 int davinci_clockevent_write (struct davinci_clockevent*,int ,unsigned int) ;
 struct davinci_clockevent* to_davinci_clockevent (struct clock_event_device*) ;

__attribute__((used)) static int
davinci_clockevent_set_next_event_cmp(unsigned long cycles,
          struct clock_event_device *dev)
{
 struct davinci_clockevent *clockevent = to_davinci_clockevent(dev);
 unsigned int curr_time;

 curr_time = davinci_clockevent_read(clockevent,
         DAVINCI_TIMER_REG_TIM12);
 davinci_clockevent_write(clockevent,
     clockevent->cmp_off, curr_time + cycles);

 return 0;
}
