
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* event_handler ) (TYPE_2__*) ;} ;
struct TYPE_3__ {scalar_t__ base; } ;
struct sun5i_timer_clkevt {TYPE_2__ clkevt; TYPE_1__ timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER_IRQ_ST_REG ;
 int stub1 (TYPE_2__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sun5i_timer_interrupt(int irq, void *dev_id)
{
 struct sun5i_timer_clkevt *ce = (struct sun5i_timer_clkevt *)dev_id;

 writel(0x1, ce->timer.base + TIMER_IRQ_ST_REG);
 ce->clkevt.event_handler(&ce->clkevt);

 return IRQ_HANDLED;
}
