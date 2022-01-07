
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; int devfn; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_PREF_MEMORY_BASE ;
 int PCI_PREF_MEMORY_LIMIT ;
 int PCI_SLOT (int ) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void rc32434_pci_early_fixup(struct pci_dev *dev)
{
 if (PCI_SLOT(dev->devfn) == 6 && dev->bus->number == 0) {

  pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT, 0);
  pci_write_config_word(dev, PCI_PREF_MEMORY_BASE, 0x10);

  pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, 4);
 }
}
