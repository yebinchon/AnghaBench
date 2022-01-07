
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int PCI_ANY_ID ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_match_id (struct pci_device_id const*,struct pci_dev*) ;

__attribute__((used)) static struct pci_dev *next_northbridge(struct pci_dev *dev,
     const struct pci_device_id *ids)
{
 do {
  dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, dev);
  if (!dev)
   break;
 } while (!pci_match_id(ids, dev));
 return dev;
}
