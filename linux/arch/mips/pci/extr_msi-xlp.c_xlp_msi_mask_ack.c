
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_msi_data {int lnkbase; } ;
struct irq_data {int irq; } ;


 int PCIE_9XX_MSI_STATUS ;
 int PCIE_MSI_STATUS ;
 scalar_t__ cpu_is_xlp9xx () ;
 struct xlp_msi_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nlm_irq_msilink (int ) ;
 int nlm_irq_msivec (int ) ;
 int nlm_write_reg (int ,int ,unsigned int) ;
 int xlp_msi_disable (struct irq_data*) ;

__attribute__((used)) static void xlp_msi_mask_ack(struct irq_data *d)
{
 struct xlp_msi_data *md = irq_data_get_irq_chip_data(d);
 int link, vec;

 link = nlm_irq_msilink(d->irq);
 vec = nlm_irq_msivec(d->irq);
 xlp_msi_disable(d);


 if (cpu_is_xlp9xx())
  nlm_write_reg(md->lnkbase, PCIE_9XX_MSI_STATUS, 1u << vec);
 else
  nlm_write_reg(md->lnkbase, PCIE_MSI_STATUS, 1u << vec);

}
