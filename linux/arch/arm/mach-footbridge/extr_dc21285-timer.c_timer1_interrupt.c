
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 scalar_t__* CSR_TIMER1_CLR ;
 scalar_t__* CSR_TIMER1_CNTL ;
 int IRQ_HANDLED ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t timer1_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *ce = dev_id;

 *CSR_TIMER1_CLR = 0;


 if (clockevent_state_oneshot(ce))
  *CSR_TIMER1_CNTL = 0;

 ce->event_handler(ce);

 return IRQ_HANDLED;
}
