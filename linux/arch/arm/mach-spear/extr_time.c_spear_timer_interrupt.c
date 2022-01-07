
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int CLKEVT ;
 int INT_STATUS ;
 scalar_t__ IR (int ) ;
 int IRQ_HANDLED ;
 struct clock_event_device clkevt ;
 scalar_t__ gpt_base ;
 int stub1 (struct clock_event_device*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t spear_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &clkevt;

 writew(INT_STATUS, gpt_base + IR(CLKEVT));

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
