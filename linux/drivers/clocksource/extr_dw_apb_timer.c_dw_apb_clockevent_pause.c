
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct dw_apb_clock_event_device {TYPE_1__ timer; } ;


 int apbt_disable_int (TYPE_1__*) ;
 int disable_irq (int ) ;

void dw_apb_clockevent_pause(struct dw_apb_clock_event_device *dw_ced)
{
 disable_irq(dw_ced->timer.irq);
 apbt_disable_int(&dw_ced->timer);
}
