
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int imx_gpc_hwirq_mask (int ) ;
 int irq_chip_mask_parent (struct irq_data*) ;

__attribute__((used)) static void imx_gpc_irq_mask(struct irq_data *d)
{
 imx_gpc_hwirq_mask(d->hwirq);
 irq_chip_mask_parent(d);
}
