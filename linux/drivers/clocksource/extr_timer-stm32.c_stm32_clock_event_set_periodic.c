
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int stm32_clock_event_set_next_event (int ,struct clock_event_device*) ;
 int stm32_timer_start (struct timer_of*) ;
 int timer_of_period (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int stm32_clock_event_set_periodic(struct clock_event_device *clkevt)
{
 struct timer_of *to = to_timer_of(clkevt);

 stm32_timer_start(to);

 return stm32_clock_event_set_next_event(timer_of_period(to), clkevt);
}
