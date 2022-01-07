
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct timer_of {TYPE_1__ clkevt; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PTIM_TSR ;
 int csky_to ;
 int mtcr (int ,int ) ;
 int stub1 (TYPE_1__*) ;
 struct timer_of* this_cpu_ptr (int *) ;

__attribute__((used)) static irqreturn_t csky_timer_interrupt(int irq, void *dev)
{
 struct timer_of *to = this_cpu_ptr(&csky_to);

 mtcr(PTIM_TSR, 0);

 to->clkevt.event_handler(&to->clkevt);

 return IRQ_HANDLED;
}
