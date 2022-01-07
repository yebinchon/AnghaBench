
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 unsigned char RBTX4927_IRQ_IOC_PCIA ;
 unsigned char RBTX4927_IRQ_IOC_PCIB ;
 unsigned char RBTX4927_IRQ_IOC_PCIC ;
 unsigned char RBTX4927_IRQ_IOC_PCID ;
 int TX4927_PCIC_IDSEL_AD_TO_SLOT (int) ;
 int TXX9_PCI_OPT_PICMG ;
 int txx9_pci_option ;

int rbtx4927_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 unsigned char irq = pin;


 irq--;
 if (slot == TX4927_PCIC_IDSEL_AD_TO_SLOT(23)) {


  irq = (irq + 0 + slot) % 4;
 } else {

  if (txx9_pci_option & TXX9_PCI_OPT_PICMG)
   irq = (irq + 33 - slot) % 4;
  else
   irq = (irq + 3 + slot) % 4;
 }
 irq++;

 switch (irq) {
 case 1:
  irq = RBTX4927_IRQ_IOC_PCIA;
  break;
 case 2:
  irq = RBTX4927_IRQ_IOC_PCIB;
  break;
 case 3:
  irq = RBTX4927_IRQ_IOC_PCIC;
  break;
 case 4:
  irq = RBTX4927_IRQ_IOC_PCID;
  break;
 }
 return irq;
}
