
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_apb_clock_event_device {int timer; int (* eoi ) (int *) ;} ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct dw_apb_clock_event_device* ced_to_dw_apb_ced (struct clock_event_device*) ;
 int pr_info (char*,int) ;
 int stub1 (int *) ;
 int stub2 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t dw_apb_clockevent_irq(int irq, void *data)
{
 struct clock_event_device *evt = data;
 struct dw_apb_clock_event_device *dw_ced = ced_to_dw_apb_ced(evt);

 if (!evt->event_handler) {
  pr_info("Spurious APBT timer interrupt %d\n", irq);
  return IRQ_NONE;
 }

 if (dw_ced->eoi)
  dw_ced->eoi(&dw_ced->timer);

 evt->event_handler(evt);
 return IRQ_HANDLED;
}
