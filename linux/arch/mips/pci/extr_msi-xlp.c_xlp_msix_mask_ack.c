
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct xlp_msi_data {TYPE_1__* node; int lnkbase; } ;
struct irq_data {int irq; } ;
struct TYPE_2__ {int picbase; } ;


 unsigned int PCIE_9XX_MSIX_STATUSX (int) ;
 unsigned int PCIE_MSIX_STATUS ;
 int PIC_IRT_PCIE_MSIX_INDEX (int) ;
 int XLP_MSIXVEC_PER_LINK ;
 scalar_t__ cpu_is_xlp9xx () ;
 struct xlp_msi_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nlm_irq_msixlink (int) ;
 int nlm_irq_msixvec (int ) ;
 int nlm_pic_ack (int ,int ) ;
 int nlm_write_reg (int ,unsigned int,unsigned int) ;
 int pci_msi_mask_irq (struct irq_data*) ;

__attribute__((used)) static void xlp_msix_mask_ack(struct irq_data *d)
{
 struct xlp_msi_data *md;
 int link, msixvec;
 uint32_t status_reg, bit;

 msixvec = nlm_irq_msixvec(d->irq);
 link = nlm_irq_msixlink(msixvec);
 pci_msi_mask_irq(d);
 md = irq_data_get_irq_chip_data(d);


 if (cpu_is_xlp9xx()) {
  status_reg = PCIE_9XX_MSIX_STATUSX(link);
  bit = msixvec % XLP_MSIXVEC_PER_LINK;
 } else {
  status_reg = PCIE_MSIX_STATUS;
  bit = msixvec;
 }
 nlm_write_reg(md->lnkbase, status_reg, 1u << bit);

 if (!cpu_is_xlp9xx())
  nlm_pic_ack(md->node->picbase,
    PIC_IRT_PCIE_MSIX_INDEX(msixvec));
}
