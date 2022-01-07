
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 TYPE_1__ orion_clkevt ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t orion_clkevt_irq_handler(int irq, void *dev_id)
{
 orion_clkevt.event_handler(&orion_clkevt);
 return IRQ_HANDLED;
}
