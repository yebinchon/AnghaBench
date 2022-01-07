
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int KERN_INFO ;
 unsigned char MIN_PCI_LATENCY ;
 int PCI_LATENCY_TIMER ;
 int PRINTK (int ,char*,unsigned char,unsigned char) ;
 unsigned char pci_lat ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,unsigned char) ;

__attribute__((used)) static void setup_pci_dev(struct pci_dev *pci_dev)
{
 unsigned char lat;


 pci_set_master(pci_dev);


 pci_read_config_byte (pci_dev, PCI_LATENCY_TIMER, &lat);

 if (!pci_lat)
  pci_lat = (lat < MIN_PCI_LATENCY) ? MIN_PCI_LATENCY : lat;

 if (lat != pci_lat) {
  PRINTK (KERN_INFO, "Changing PCI latency timer from %hu to %hu",
   lat, pci_lat);
  pci_write_config_byte(pci_dev, PCI_LATENCY_TIMER, pci_lat);
 }
}
