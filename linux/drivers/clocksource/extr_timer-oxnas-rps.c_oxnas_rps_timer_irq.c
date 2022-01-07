
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct oxnas_rps_timer {TYPE_1__ clkevent; scalar_t__ clkevt_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER_CLRINT_REG ;
 int stub1 (TYPE_1__*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t oxnas_rps_timer_irq(int irq, void *dev_id)
{
 struct oxnas_rps_timer *rps = dev_id;

 writel_relaxed(0, rps->clkevt_base + TIMER_CLRINT_REG);

 rps->clkevent.event_handler(&rps->clkevent);

 return IRQ_HANDLED;
}
