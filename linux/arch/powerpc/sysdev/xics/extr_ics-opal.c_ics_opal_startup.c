
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int ics_opal_unmask_irq (struct irq_data*) ;
 scalar_t__ irq_data_get_msi_desc (struct irq_data*) ;
 int pci_msi_unmask_irq (struct irq_data*) ;

__attribute__((used)) static unsigned int ics_opal_startup(struct irq_data *d)
{
 ics_opal_unmask_irq(d);
 return 0;
}
