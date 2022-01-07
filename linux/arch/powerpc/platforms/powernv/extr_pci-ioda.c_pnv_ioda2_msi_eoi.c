
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef int int64_t ;


 int WARN_ON_ONCE (int ) ;
 int icp_native_eoi (struct irq_data*) ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 int pnv_opal_pci_msi_eoi (struct irq_chip*,unsigned int) ;

__attribute__((used)) static void pnv_ioda2_msi_eoi(struct irq_data *d)
{
 int64_t rc;
 unsigned int hw_irq = (unsigned int)irqd_to_hwirq(d);
 struct irq_chip *chip = irq_data_get_irq_chip(d);

 rc = pnv_opal_pci_msi_eoi(chip, hw_irq);
 WARN_ON_ONCE(rc);

 icp_native_eoi(d);
}
