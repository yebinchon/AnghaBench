
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int IntPend; } ;


 int MPC52xx_IRQ_L2_MASK ;
 int irqd_to_hwirq (struct irq_data*) ;
 int out_be32 (int *,int) ;
 TYPE_1__* sdma ;

__attribute__((used)) static void mpc52xx_sdma_ack(struct irq_data *d)
{
 int l2irq = irqd_to_hwirq(d) & MPC52xx_IRQ_L2_MASK;
 out_be32(&sdma->IntPend, 1 << l2irq);
}
