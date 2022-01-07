
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coherent_dma_mask; int * dma_mask; } ;
struct pci_dev {int devfn; int irq; TYPE_1__ dev; } ;


 int DMA_BIT_MASK (int) ;
 int PIC_EHCI_0_IRQ ;
 int PIC_EHCI_1_IRQ ;
 int PIC_OHCI_0_IRQ ;
 int PIC_OHCI_1_IRQ ;
 int PIC_OHCI_2_IRQ ;
 int PIC_OHCI_3_IRQ ;
 int xlp_usb_dmamask ;

__attribute__((used)) static void nlm_usb_fixup_final(struct pci_dev *dev)
{
 dev->dev.dma_mask = &xlp_usb_dmamask;
 dev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 switch (dev->devfn) {
 case 0x10:
  dev->irq = PIC_EHCI_0_IRQ;
  break;
 case 0x11:
  dev->irq = PIC_OHCI_0_IRQ;
  break;
 case 0x12:
  dev->irq = PIC_OHCI_1_IRQ;
  break;
 case 0x13:
  dev->irq = PIC_EHCI_1_IRQ;
  break;
 case 0x14:
  dev->irq = PIC_OHCI_2_IRQ;
  break;
 case 0x15:
  dev->irq = PIC_OHCI_3_IRQ;
  break;
 }
}
