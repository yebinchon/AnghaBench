
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_timer {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 struct rk_timer* rk_timer (struct clock_event_device*) ;
 int rk_timer_disable (struct rk_timer*) ;
 int rk_timer_interrupt_clear (struct rk_timer*) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t rk_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *ce = dev_id;
 struct rk_timer *timer = rk_timer(ce);

 rk_timer_interrupt_clear(timer);

 if (clockevent_state_oneshot(ce))
  rk_timer_disable(timer);

 ce->event_handler(ce);

 return IRQ_HANDLED;
}
