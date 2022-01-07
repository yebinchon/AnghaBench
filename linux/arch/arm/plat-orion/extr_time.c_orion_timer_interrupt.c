
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 scalar_t__ BRIDGE_CAUSE_OFF ;
 int IRQ_HANDLED ;
 scalar_t__ bridge_base ;
 int bridge_timer1_clr_mask ;
 TYPE_1__ orion_clkevt ;
 int stub1 (TYPE_1__*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t orion_timer_interrupt(int irq, void *dev_id)
{



 writel(bridge_timer1_clr_mask, bridge_base + BRIDGE_CAUSE_OFF);
 orion_clkevt.event_handler(&orion_clkevt);

 return IRQ_HANDLED;
}
