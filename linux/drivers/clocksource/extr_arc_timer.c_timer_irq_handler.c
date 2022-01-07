
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int ARC_REG_TIMER0_CTRL ;
 int IRQ_HANDLED ;
 int TIMER_CTRL_NH ;
 int arc_clockevent_device ;
 int clockevent_state_periodic (struct clock_event_device*) ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device* this_cpu_ptr (int *) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static irqreturn_t timer_irq_handler(int irq, void *dev_id)
{




 struct clock_event_device *evt = this_cpu_ptr(&arc_clockevent_device);
 int irq_reenable = clockevent_state_periodic(evt);
 write_aux_reg(ARC_REG_TIMER0_CTRL, irq_reenable | TIMER_CTRL_NH);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
