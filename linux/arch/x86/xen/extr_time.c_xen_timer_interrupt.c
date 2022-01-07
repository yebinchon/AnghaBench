
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;
struct TYPE_2__ {int evt; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device* this_cpu_ptr (int *) ;
 TYPE_1__ xen_clock_events ;

__attribute__((used)) static irqreturn_t xen_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = this_cpu_ptr(&xen_clock_events.evt);
 irqreturn_t ret;

 ret = IRQ_NONE;
 if (evt->event_handler) {
  evt->event_handler(evt);
  ret = IRQ_HANDLED;
 }

 return ret;
}
