
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int icp_hv_set_xirr (int) ;
 int iosync () ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 int xics_pop_cppr () ;

__attribute__((used)) static void icp_hv_eoi(struct irq_data *d)
{
 unsigned int hw_irq = (unsigned int)irqd_to_hwirq(d);

 iosync();
 icp_hv_set_xirr((xics_pop_cppr() << 24) | hw_irq);
}
