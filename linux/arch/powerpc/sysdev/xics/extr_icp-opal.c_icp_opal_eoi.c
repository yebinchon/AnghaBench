
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
typedef scalar_t__ int64_t ;


 int force_external_irq_replay () ;
 int iosync () ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 scalar_t__ opal_int_eoi (int) ;
 int xics_pop_cppr () ;

__attribute__((used)) static void icp_opal_eoi(struct irq_data *d)
{
 unsigned int hw_irq = (unsigned int)irqd_to_hwirq(d);
 int64_t rc;

 iosync();
 rc = opal_int_eoi((xics_pop_cppr() << 24) | hw_irq);







 if (rc > 0)
  force_external_irq_replay();
}
