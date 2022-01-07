
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;
struct TYPE_2__ {int enable; } ;


 int IRQ_HANDLED ;
 struct clock_event_device hexagon_clockevent_dev ;
 int iowrite32 (int ,int *) ;
 TYPE_1__* rtos_timer ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *devid)
{
 struct clock_event_device *ce_dev = &hexagon_clockevent_dev;

 iowrite32(0, &rtos_timer->enable);
 ce_dev->event_handler(ce_dev);

 return IRQ_HANDLED;
}
