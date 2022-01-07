
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mtk_syst_ack_irq (struct timer_of*) ;
 int stub1 (struct clock_event_device*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t mtk_syst_handler(int irq, void *dev_id)
{
 struct clock_event_device *clkevt = dev_id;
 struct timer_of *to = to_timer_of(clkevt);

 mtk_syst_ack_irq(to);
 clkevt->event_handler(clkevt);

 return IRQ_HANDLED;
}
