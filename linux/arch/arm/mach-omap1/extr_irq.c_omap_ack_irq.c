
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ va; } ;


 scalar_t__ IRQ_CONTROL_REG_OFFSET ;
 TYPE_1__* irq_banks ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void omap_ack_irq(int irq)
{
 if (irq > 31)
  writel_relaxed(0x1, irq_banks[1].va + IRQ_CONTROL_REG_OFFSET);

 writel_relaxed(0x1, irq_banks[0].va + IRQ_CONTROL_REG_OFFSET);
}
