
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nios2_clockevent_dev {int timer; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int ALTERA_TIMER_STATUS_REG ;
 int IRQ_HANDLED ;
 int stub1 (struct clock_event_device*) ;
 int timer_writew (int *,int ,int ) ;
 struct nios2_clockevent_dev* to_nios2_clkevent (struct clock_event_device*) ;

irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = (struct clock_event_device *) dev_id;
 struct nios2_clockevent_dev *nios2_ced = to_nios2_clkevent(evt);


 timer_writew(&nios2_ced->timer, 0, ALTERA_TIMER_STATUS_REG);
 evt->event_handler(evt);

 return IRQ_HANDLED;
}
