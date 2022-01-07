
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct lpc32xx_clock_event_ddata {TYPE_1__ evtdev; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ LPC32XX_TIMER_IR ;
 int LPC32XX_TIMER_IR_MR0INT ;
 int stub1 (TYPE_1__*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t lpc32xx_clock_event_handler(int irq, void *dev_id)
{
 struct lpc32xx_clock_event_ddata *ddata = dev_id;


 writel_relaxed(LPC32XX_TIMER_IR_MR0INT, ddata->base + LPC32XX_TIMER_IR);

 ddata->evtdev.event_handler(&ddata->evtdev);

 return IRQ_HANDLED;
}
