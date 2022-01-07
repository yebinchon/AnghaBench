
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int enable_cnt; } ;


 int BUG_ON (int ) ;
 int acpi_pci_irq_disable (struct pci_dev*) ;
 int atomic_read (int *) ;
 int pci_dev_msi_enabled (struct pci_dev*) ;

void
pcibios_disable_device (struct pci_dev *dev)
{
 BUG_ON(atomic_read(&dev->enable_cnt));
 if (!pci_dev_msi_enabled(dev))
  acpi_pci_irq_disable(dev);
}
