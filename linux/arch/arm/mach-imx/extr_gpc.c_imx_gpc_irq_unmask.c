
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int imx_gpc_hwirq_unmask (int ) ;
 int irq_chip_unmask_parent (struct irq_data*) ;

__attribute__((used)) static void imx_gpc_irq_unmask(struct irq_data *d)
{
 imx_gpc_hwirq_unmask(d->hwirq);
 irq_chip_unmask_parent(d);
}
