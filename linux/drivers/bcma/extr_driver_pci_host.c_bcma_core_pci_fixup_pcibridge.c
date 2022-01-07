
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ read; } ;


 int BCMA_PCI_BAR1_CONTROL ;
 scalar_t__ PCI_SLOT (int ) ;
 scalar_t__ bcma_core_pci_hostmode_read_config ;
 int pci_name (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 scalar_t__ pcibios_enable_device (struct pci_dev*,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void bcma_core_pci_fixup_pcibridge(struct pci_dev *dev)
{
 if (dev->bus->ops->read != bcma_core_pci_hostmode_read_config) {

  return;
 }
 if (PCI_SLOT(dev->devfn) != 0)
  return;

 pr_info("PCI: Fixing up bridge %s\n", pci_name(dev));


 pci_set_master(dev);
 if (pcibios_enable_device(dev, ~0) < 0) {
  pr_err("PCI: BCMA bridge enable failed\n");
  return;
 }


 pci_write_config_dword(dev, BCMA_PCI_BAR1_CONTROL, 3);
}
