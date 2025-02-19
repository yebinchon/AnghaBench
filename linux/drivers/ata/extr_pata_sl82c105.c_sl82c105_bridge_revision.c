
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; int class; int revision; int devfn; int bus; } ;


 int PCI_CLASS_BRIDGE_ISA ;
 int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_DEVICE_ID_WINBOND_83C553 ;
 int PCI_SLOT (int ) ;
 scalar_t__ PCI_VENDOR_ID_WINBOND ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;

__attribute__((used)) static int sl82c105_bridge_revision(struct pci_dev *pdev)
{
 struct pci_dev *bridge;




 bridge = pci_get_slot(pdev->bus,
          PCI_DEVFN(PCI_SLOT(pdev->devfn), 0));
 if (!bridge)
  return -1;




 if (bridge->vendor != PCI_VENDOR_ID_WINBOND ||
     bridge->device != PCI_DEVICE_ID_WINBOND_83C553 ||
     bridge->class >> 8 != PCI_CLASS_BRIDGE_ISA) {
      pci_dev_put(bridge);
  return -1;
 }



 pci_dev_put(bridge);
 return bridge->revision;
}
