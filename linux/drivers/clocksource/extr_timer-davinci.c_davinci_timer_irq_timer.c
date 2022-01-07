
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct davinci_clockevent {TYPE_1__ dev; int base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int clockevent_state_oneshot (TYPE_1__*) ;
 int davinci_tim12_shutdown (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t davinci_timer_irq_timer(int irq, void *data)
{
 struct davinci_clockevent *clockevent = data;

 if (!clockevent_state_oneshot(&clockevent->dev))
  davinci_tim12_shutdown(clockevent->base);

 clockevent->dev.event_handler(&clockevent->dev);

 return IRQ_HANDLED;
}
