
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int BIT (int) ;
 int IRQ_HANDLED ;
 scalar_t__ SIRFSOC_TIMER_INTR_STATUS ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ sirfsoc_timer_base ;
 int sirfsoc_timer_count_disable (int) ;
 int smp_processor_id () ;
 int stub1 (struct clock_event_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t sirfsoc_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *ce = dev_id;
 int cpu = smp_processor_id();


 writel_relaxed(BIT(cpu), sirfsoc_timer_base + SIRFSOC_TIMER_INTR_STATUS);

 if (clockevent_state_oneshot(ce))
  sirfsoc_timer_count_disable(cpu);

 ce->event_handler(ce);

 return IRQ_HANDLED;
}
