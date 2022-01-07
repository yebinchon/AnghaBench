
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ OWL_Tx_CTL ;
 int OWL_Tx_CTL_PD ;
 scalar_t__ owl_clkevt_base ;
 int stub1 (struct clock_event_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t owl_timer1_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = (struct clock_event_device *)dev_id;

 writel(OWL_Tx_CTL_PD, owl_clkevt_base + OWL_Tx_CTL);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
