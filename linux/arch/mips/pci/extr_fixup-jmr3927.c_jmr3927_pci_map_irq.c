
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int * parent; } ;


 unsigned char JMR3927_IRQ_ETHER0 ;
 unsigned char JMR3927_IRQ_IOC_PCIA ;
 unsigned char JMR3927_IRQ_IOC_PCIB ;
 unsigned char JMR3927_IRQ_IOC_PCIC ;
 unsigned char JMR3927_IRQ_IOC_PCID ;
 unsigned char TX3927_PCIC_IDSEL_AD_TO_SLOT (int) ;
 int TXX9_PCI_OPT_PICMG ;
 int txx9_pci_option ;

int jmr3927_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 unsigned char irq = pin;


 irq--;
 if (slot == TX3927_PCIC_IDSEL_AD_TO_SLOT(23)) {



  irq = (irq + 2) % 4;
 } else if (slot == TX3927_PCIC_IDSEL_AD_TO_SLOT(22)) {



  irq = (irq + 0) % 4;
 } else {

  if (txx9_pci_option & TXX9_PCI_OPT_PICMG)
   irq = (irq + 33 - slot) % 4;
  else
   irq = (irq + 3 + slot) % 4;
 }
 irq++;

 switch (irq) {
 case 1:
  irq = JMR3927_IRQ_IOC_PCIA;
  break;
 case 2:
  irq = JMR3927_IRQ_IOC_PCIB;
  break;
 case 3:
  irq = JMR3927_IRQ_IOC_PCIC;
  break;
 case 4:
  irq = JMR3927_IRQ_IOC_PCID;
  break;
 }


 if (dev->bus->parent == ((void*)0) &&
     slot == TX3927_PCIC_IDSEL_AD_TO_SLOT(24))
  irq = JMR3927_IRQ_ETHER0;
 return irq;
}
