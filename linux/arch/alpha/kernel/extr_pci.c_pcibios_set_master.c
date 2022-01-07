
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCI_LATENCY_TIMER ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int printk (char*,int ) ;

void
pcibios_set_master(struct pci_dev *dev)
{
 u8 lat;
 pci_read_config_byte(dev, PCI_LATENCY_TIMER, &lat);
 if (lat >= 16) return;
 printk("PCI: Setting latency timer of device %s to 64\n",
       pci_name(dev));
 pci_write_config_byte(dev, PCI_LATENCY_TIMER, 64);
}
