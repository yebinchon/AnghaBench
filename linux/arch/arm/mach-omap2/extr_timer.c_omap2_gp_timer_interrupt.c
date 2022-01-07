
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OMAP_TIMER_INT_OVERFLOW ;
 int __omap_dm_timer_write_status (int *,int ) ;
 int clkev ;
 struct clock_event_device clockevent_gpt ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t omap2_gp_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &clockevent_gpt;

 __omap_dm_timer_write_status(&clkev, OMAP_TIMER_INT_OVERFLOW);

 evt->event_handler(evt);
 return IRQ_HANDLED;
}
