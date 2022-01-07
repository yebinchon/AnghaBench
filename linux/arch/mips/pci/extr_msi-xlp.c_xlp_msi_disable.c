
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_msi_data {unsigned int msi_enabled_mask; int msi_lock; int lnkbase; } ;
struct irq_data {int irq; } ;


 int PCIE_9XX_MSI_EN ;
 int PCIE_MSI_EN ;
 scalar_t__ cpu_is_xlp9xx () ;
 struct xlp_msi_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nlm_irq_msivec (int ) ;
 int nlm_write_reg (int ,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xlp_msi_disable(struct irq_data *d)
{
 struct xlp_msi_data *md = irq_data_get_irq_chip_data(d);
 unsigned long flags;
 int vec;

 vec = nlm_irq_msivec(d->irq);
 spin_lock_irqsave(&md->msi_lock, flags);
 md->msi_enabled_mask &= ~(1u << vec);
 if (cpu_is_xlp9xx())
  nlm_write_reg(md->lnkbase, PCIE_9XX_MSI_EN,
    md->msi_enabled_mask);
 else
  nlm_write_reg(md->lnkbase, PCIE_MSI_EN, md->msi_enabled_mask);
 spin_unlock_irqrestore(&md->msi_lock, flags);
}
