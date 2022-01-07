
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 scalar_t__ COBALT_BRD_ID_QUBE1 ;
 scalar_t__ COBALT_BRD_ID_RAQ2 ;
 scalar_t__ cobalt_board_id ;
 int* irq_tab_cobalt ;
 int* irq_tab_qube1 ;
 int* irq_tab_raq2 ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 if (cobalt_board_id <= COBALT_BRD_ID_QUBE1)
  return irq_tab_qube1[slot];

 if (cobalt_board_id == COBALT_BRD_ID_RAQ2)
  return irq_tab_raq2[slot];

 return irq_tab_cobalt[slot];
}
