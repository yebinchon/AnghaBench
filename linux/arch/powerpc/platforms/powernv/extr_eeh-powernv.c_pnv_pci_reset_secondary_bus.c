
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct pci_controller {int dummy; } ;


 int EEH_RESET_DEACTIVATE ;
 int EEH_RESET_HOT ;
 struct pci_controller* pci_bus_to_host (int ) ;
 scalar_t__ pci_is_root_bus (int ) ;
 int pnv_eeh_bridge_reset (struct pci_dev*,int ) ;
 int pnv_eeh_root_reset (struct pci_controller*,int ) ;

void pnv_pci_reset_secondary_bus(struct pci_dev *dev)
{
 struct pci_controller *hose;

 if (pci_is_root_bus(dev->bus)) {
  hose = pci_bus_to_host(dev->bus);
  pnv_eeh_root_reset(hose, EEH_RESET_HOT);
  pnv_eeh_root_reset(hose, EEH_RESET_DEACTIVATE);
 } else {
  pnv_eeh_bridge_reset(dev, EEH_RESET_HOT);
  pnv_eeh_bridge_reset(dev, EEH_RESET_DEACTIVATE);
 }
}
