
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int stm32_clock_event_disable (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int stm32_clock_event_shutdown(struct clock_event_device *clkevt)
{
 struct timer_of *to = to_timer_of(clkevt);

 stm32_clock_event_disable(to);

 return 0;
}
