
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;


 int PCI_VENDOR_ID_INTEL ;
 struct pci_dev* pci_get_device (int ,int,struct pci_dev*) ;
 int topology_phys_to_logical_pkg (int) ;
 int uncore_pcibus_to_physid (int ) ;

__attribute__((used)) static struct pci_dev *snr_uncore_get_mc_dev(int id)
{
 struct pci_dev *mc_dev = ((void*)0);
 int phys_id, pkg;

 while (1) {
  mc_dev = pci_get_device(PCI_VENDOR_ID_INTEL, 0x3451, mc_dev);
  if (!mc_dev)
   break;
  phys_id = uncore_pcibus_to_physid(mc_dev->bus);
  if (phys_id < 0)
   continue;
  pkg = topology_phys_to_logical_pkg(phys_id);
  if (pkg < 0)
   continue;
  else if (pkg == id)
   break;
 }
 return mc_dev;
}
