
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct clock_event_device clockevent_32k_timer ;
 int omap_32k_timer_ack_irq () ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t omap_32k_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &clockevent_32k_timer;
 omap_32k_timer_ack_irq();

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
