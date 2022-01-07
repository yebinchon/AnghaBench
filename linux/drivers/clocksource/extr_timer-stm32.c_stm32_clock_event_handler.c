
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIM_SR ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int stm32_clock_event_set_periodic (struct clock_event_device*) ;
 int stm32_clock_event_shutdown (struct clock_event_device*) ;
 int stub1 (struct clock_event_device*) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t stm32_clock_event_handler(int irq, void *dev_id)
{
 struct clock_event_device *clkevt = (struct clock_event_device *)dev_id;
 struct timer_of *to = to_timer_of(clkevt);

 writel_relaxed(0, timer_of_base(to) + TIM_SR);

 if (clockevent_state_periodic(clkevt))
  stm32_clock_event_set_periodic(clkevt);
 else
  stm32_clock_event_shutdown(clkevt);

 clkevt->event_handler(clkevt);

 return IRQ_HANDLED;
}
