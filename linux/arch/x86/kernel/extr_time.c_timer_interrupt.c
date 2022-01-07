
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 TYPE_1__* global_clock_event ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 global_clock_event->event_handler(global_clock_event);
 return IRQ_HANDLED;
}
