
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ LCL_TIMER_EVENTS_STATUS ;
 int TIMER0_CLR_MASK ;
 scalar_t__ local_base ;
 int stub1 (struct clock_event_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t armada_370_xp_timer_interrupt(int irq, void *dev_id)
{



 struct clock_event_device *evt = dev_id;

 writel(TIMER0_CLR_MASK, local_base + LCL_TIMER_EVENTS_STATUS);
 evt->event_handler(evt);

 return IRQ_HANDLED;
}
