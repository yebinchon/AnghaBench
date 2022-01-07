
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct dw_apb_clock_event_device {int ced; TYPE_1__ timer; } ;


 int free_irq (int ,int *) ;

void dw_apb_clockevent_stop(struct dw_apb_clock_event_device *dw_ced)
{
 free_irq(dw_ced->timer.irq, &dw_ced->ced);
}
