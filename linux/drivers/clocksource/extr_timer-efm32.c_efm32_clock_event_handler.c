
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct efm32_clock_event_ddata {TYPE_1__ evtdev; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMERn_IFC ;
 int TIMERn_IRQ_UF ;
 int stub1 (TYPE_1__*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t efm32_clock_event_handler(int irq, void *dev_id)
{
 struct efm32_clock_event_ddata *ddata = dev_id;

 writel_relaxed(TIMERn_IRQ_UF, ddata->base + TIMERn_IFC);

 ddata->evtdev.event_handler(&ddata->evtdev);

 return IRQ_HANDLED;
}
