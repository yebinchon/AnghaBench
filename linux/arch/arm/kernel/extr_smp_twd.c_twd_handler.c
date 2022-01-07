
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int stub1 (struct clock_event_device*) ;
 scalar_t__ twd_timer_ack () ;

__attribute__((used)) static irqreturn_t twd_handler(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;

 if (twd_timer_ack()) {
  evt->event_handler(evt);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
