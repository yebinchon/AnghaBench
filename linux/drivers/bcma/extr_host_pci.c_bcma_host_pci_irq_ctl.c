
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct bcma_device {int core_index; } ;
struct bcma_bus {scalar_t__ hosttype; struct pci_dev* host_pci; } ;


 scalar_t__ BCMA_HOSTTYPE_PCI ;
 int BCMA_PCI_IRQMASK ;
 int BIT (int ) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

int bcma_host_pci_irq_ctl(struct bcma_bus *bus, struct bcma_device *core,
     bool enable)
{
 struct pci_dev *pdev;
 u32 coremask, tmp;
 int err = 0;

 if (bus->hosttype != BCMA_HOSTTYPE_PCI) {



  goto out;
 }

 pdev = bus->host_pci;

 err = pci_read_config_dword(pdev, BCMA_PCI_IRQMASK, &tmp);
 if (err)
  goto out;

 coremask = BIT(core->core_index) << 8;
 if (enable)
  tmp |= coremask;
 else
  tmp &= ~coremask;

 err = pci_write_config_dword(pdev, BCMA_PCI_IRQMASK, tmp);

out:
 return err;
}
