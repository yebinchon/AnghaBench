
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int BIT (int ) ;
 int IRQ_HANDLED ;
 scalar_t__ SIRFSOC_TIMER_STATUS ;
 int WARN_ON (int) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ sirfsoc_timer_base ;
 int stub1 (struct clock_event_device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sirfsoc_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *ce = dev_id;

 WARN_ON(!(readl_relaxed(sirfsoc_timer_base + SIRFSOC_TIMER_STATUS) &
  BIT(0)));


 writel_relaxed(BIT(0), sirfsoc_timer_base + SIRFSOC_TIMER_STATUS);

 ce->event_handler(ce);

 return IRQ_HANDLED;
}
