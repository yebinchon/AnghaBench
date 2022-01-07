
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTEGRATOR_HDR_IC_OFFSET ;
 scalar_t__ IRQ_ENABLE_CLEAR ;
 scalar_t__ cm_base ;
 int writel (int,scalar_t__) ;

void cm_clear_irqs(void)
{

 writel(0xffffffffU, cm_base + INTEGRATOR_HDR_IC_OFFSET +
  IRQ_ENABLE_CLEAR);
}
