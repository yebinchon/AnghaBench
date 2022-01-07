
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct pci2phy_map {scalar_t__* pbus_to_physid; } ;
struct TYPE_2__ {int number; } ;


 int ENOMEM ;
 int ENOTTY ;
 int PCI_VENDOR_ID_INTEL ;
 struct pci2phy_map* __find_pci2phy_map (int) ;
 int pci2phy_map_lock ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (TYPE_1__*) ;
 struct pci_dev* pci_get_device (int ,int,struct pci_dev*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

int snb_pci2phy_map_init(int devid)
{
 struct pci_dev *dev = ((void*)0);
 struct pci2phy_map *map;
 int bus, segment;

 dev = pci_get_device(PCI_VENDOR_ID_INTEL, devid, dev);
 if (!dev)
  return -ENOTTY;

 bus = dev->bus->number;
 segment = pci_domain_nr(dev->bus);

 raw_spin_lock(&pci2phy_map_lock);
 map = __find_pci2phy_map(segment);
 if (!map) {
  raw_spin_unlock(&pci2phy_map_lock);
  pci_dev_put(dev);
  return -ENOMEM;
 }
 map->pbus_to_physid[bus] = 0;
 raw_spin_unlock(&pci2phy_map_lock);

 pci_dev_put(dev);

 return 0;
}
