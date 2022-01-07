
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int ctrl; } ;


 int MPC52xx_IRQ_L2_MASK ;
 TYPE_1__* intr ;
 int io_be_setbit (int *,int) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void mpc52xx_extirq_unmask(struct irq_data *d)
{
 int l2irq = irqd_to_hwirq(d) & MPC52xx_IRQ_L2_MASK;
 io_be_setbit(&intr->ctrl, 11 - l2irq);
}
