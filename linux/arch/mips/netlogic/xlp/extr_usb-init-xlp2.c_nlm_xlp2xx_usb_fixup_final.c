
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coherent_dma_mask; int * dma_mask; } ;
struct pci_dev {int devfn; int irq; TYPE_1__ dev; } ;


 int DMA_BIT_MASK (int) ;
 int PIC_2XX_XHCI_0_IRQ ;
 int PIC_2XX_XHCI_1_IRQ ;
 int PIC_2XX_XHCI_2_IRQ ;
 int xlp_usb_dmamask ;

__attribute__((used)) static void nlm_xlp2xx_usb_fixup_final(struct pci_dev *dev)
{
 dev->dev.dma_mask = &xlp_usb_dmamask;
 dev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 switch (dev->devfn) {
 case 0x21:
  dev->irq = PIC_2XX_XHCI_0_IRQ;
  break;
 case 0x22:
  dev->irq = PIC_2XX_XHCI_1_IRQ;
  break;
 case 0x23:
  dev->irq = PIC_2XX_XHCI_2_IRQ;
  break;
 }
}
