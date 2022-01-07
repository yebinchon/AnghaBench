
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct clock_event_device cevd; } ;


 int IRQ_HANDLED ;
 scalar_t__ U300_TIMER_APP_GPT1IA ;
 int U300_TIMER_APP_GPT1IA_IRQ_ACK ;
 int stub1 (struct clock_event_device*) ;
 TYPE_1__ u300_clockevent_data ;
 scalar_t__ u300_timer_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t u300_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &u300_clockevent_data.cevd;


 writel(U300_TIMER_APP_GPT1IA_IRQ_ACK,
  u300_timer_base + U300_TIMER_APP_GPT1IA);
 evt->event_handler(evt);
 return IRQ_HANDLED;
}
