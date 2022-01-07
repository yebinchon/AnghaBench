
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; struct pci_dev* self; } ;


 int PCI_DEVFN (int,int ) ;





 int** irq_tab_pcit ;
 int** irq_tab_pcit_cplus ;
 int** irq_tab_rm200 ;
 int** irq_tab_rm300d ;
 int** irq_tab_rm300e ;
 int is_rm300_revd () ;
 int sni_brd_type ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 switch (sni_brd_type) {
 case 128:
  if (slot == 4) {




   while (dev && dev->bus->number != 1)
    dev = dev->bus->self;
   if (dev && dev->devfn >= PCI_DEVFN(4, 0))
    slot = 5;
  }
  return irq_tab_pcit_cplus[slot][pin];
 case 129:
  return irq_tab_pcit[slot][pin];

 case 131:
  if (is_rm300_revd())
   return irq_tab_rm300d[slot][pin];


 case 132:
  return irq_tab_rm200[slot][pin];

 case 130:
  return irq_tab_rm300e[slot][pin];
 }

 return 0;
}
