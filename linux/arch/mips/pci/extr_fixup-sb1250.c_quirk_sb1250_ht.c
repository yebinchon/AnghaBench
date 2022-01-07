
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; } ;


 int PCI_CLASS_BRIDGE_PCI ;

__attribute__((used)) static void quirk_sb1250_ht(struct pci_dev *dev)
{
 dev->class = PCI_CLASS_BRIDGE_PCI << 8;
}
