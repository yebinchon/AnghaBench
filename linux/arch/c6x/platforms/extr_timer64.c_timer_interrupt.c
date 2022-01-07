
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device t64_clockevent_device ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *cd = &t64_clockevent_device;

 cd->event_handler(cd);

 return IRQ_HANDLED;
}
