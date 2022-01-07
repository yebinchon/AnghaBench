
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER_STATUS_VAL ;
 scalar_t__ regbase ;
 int stub1 (struct clock_event_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t vt8500_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = dev_id;
 writel(0xf, regbase + TIMER_STATUS_VAL);
 evt->event_handler(evt);

 return IRQ_HANDLED;
}
