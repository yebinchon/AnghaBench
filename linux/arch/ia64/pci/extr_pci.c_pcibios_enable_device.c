
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int acpi_pci_irq_enable (struct pci_dev*) ;
 int pci_dev_msi_enabled (struct pci_dev*) ;
 int pci_enable_resources (struct pci_dev*,int) ;

int
pcibios_enable_device (struct pci_dev *dev, int mask)
{
 int ret;

 ret = pci_enable_resources(dev, mask);
 if (ret < 0)
  return ret;

 if (!pci_dev_msi_enabled(dev))
  return acpi_pci_irq_enable(dev);
 return 0;
}
