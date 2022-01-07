
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int atcpit100_timer_clear_interrupt (int ) ;
 int stub1 (struct clock_event_device*) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t atcpit100_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = (struct clock_event_device *)dev_id;
 struct timer_of *to = to_timer_of(evt);

 atcpit100_timer_clear_interrupt(timer_of_base(to));

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
