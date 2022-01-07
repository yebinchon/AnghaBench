
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct pci_dev {scalar_t__ msi_cap; } ;
struct msi_msg {int address_lo; int address_hi; scalar_t__ data; } ;
struct msi_desc {int dummy; } ;


 int CVMX_NPEI_PCIE_MSI_RCV ;
 int CVMX_PCI_MSI_RCV ;
 int CVMX_SLI_PCIE_MSI_RCV ;




 scalar_t__ OCTEON_IRQ_MSI_BIT0 ;
 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_QMASK ;
 int PCI_MSI_FLAGS_QSIZE ;
 int irq_set_msi_desc (int,struct msi_desc*) ;
 int* msi_free_irq_bitmask ;
 int msi_free_irq_bitmask_lock ;
 int msi_irq_size ;
 int* msi_multiple_irq_bitmask ;
 int octeon_dma_bar_type ;
 int panic (char*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 int pci_write_msi_msg (int,struct msi_msg*) ;
 int pr_err (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int arch_setup_msi_irq(struct pci_dev *dev, struct msi_desc *desc)
{
 struct msi_msg msg;
 u16 control;
 int configured_private_bits;
 int request_private_bits;
 int irq = 0;
 int irq_step;
 u64 search_mask;
 int index;






 pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);







 configured_private_bits = (control & PCI_MSI_FLAGS_QSIZE) >> 4;
 if (configured_private_bits == 0) {

  request_private_bits = (control & PCI_MSI_FLAGS_QMASK) >> 1;
 } else {





  request_private_bits = configured_private_bits;
 }





 if (request_private_bits > 5)
  request_private_bits = 0;

try_only_one:




 irq_step = 1 << request_private_bits;


 search_mask = (1 << irq_step) - 1;






 spin_lock(&msi_free_irq_bitmask_lock);
 for (index = 0; index < msi_irq_size/64; index++) {
  for (irq = 0; irq < 64; irq += irq_step) {
   if ((msi_free_irq_bitmask[index] & (search_mask << irq)) == 0) {
    msi_free_irq_bitmask[index] |= search_mask << irq;
    msi_multiple_irq_bitmask[index] |= (search_mask >> 1) << irq;
    goto msi_irq_allocated;
   }
  }
 }
msi_irq_allocated:
 spin_unlock(&msi_free_irq_bitmask_lock);


 if (irq >= 64) {
  if (request_private_bits) {
   pr_err("arch_setup_msi_irq: Unable to find %d free interrupts, trying just one",
          1 << request_private_bits);
   request_private_bits = 0;
   goto try_only_one;
  } else
   panic("arch_setup_msi_irq: Unable to find a free MSI interrupt");
 }


 irq += index*64;
 irq += OCTEON_IRQ_MSI_BIT0;

 switch (octeon_dma_bar_type) {
 case 128:

  msg.address_lo =
   ((128ul << 20) + CVMX_PCI_MSI_RCV) & 0xffffffff;
  msg.address_hi = ((128ul << 20) + CVMX_PCI_MSI_RCV) >> 32;
  break;
 case 131:

  msg.address_lo = (0 + CVMX_PCI_MSI_RCV) & 0xffffffff;
  msg.address_hi = (0 + CVMX_PCI_MSI_RCV) >> 32;
  break;
 case 130:


  msg.address_lo = (0 + CVMX_NPEI_PCIE_MSI_RCV) & 0xffffffff;
  msg.address_hi = (0 + CVMX_NPEI_PCIE_MSI_RCV) >> 32;
  break;
 case 129:

  msg.address_lo = (0 + CVMX_SLI_PCIE_MSI_RCV) & 0xffffffff;
  msg.address_hi = (0 + CVMX_SLI_PCIE_MSI_RCV) >> 32;
  break;
 default:
  panic("arch_setup_msi_irq: Invalid octeon_dma_bar_type");
 }
 msg.data = irq - OCTEON_IRQ_MSI_BIT0;


 control &= ~PCI_MSI_FLAGS_QSIZE;
 control |= request_private_bits << 4;
 pci_write_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, control);

 irq_set_msi_desc(irq, desc);
 pci_write_msi_msg(irq, &msg);
 return 0;
}
