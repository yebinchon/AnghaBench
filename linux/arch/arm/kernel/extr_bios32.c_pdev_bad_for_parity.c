
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_INTERG_2000 ;
 scalar_t__ PCI_DEVICE_ID_INTERG_2010 ;
 scalar_t__ PCI_DEVICE_ID_ITE_8152 ;
 scalar_t__ PCI_VENDOR_ID_INTERG ;
 scalar_t__ PCI_VENDOR_ID_ITE ;

__attribute__((used)) static inline int pdev_bad_for_parity(struct pci_dev *dev)
{
 return ((dev->vendor == PCI_VENDOR_ID_INTERG &&
   (dev->device == PCI_DEVICE_ID_INTERG_2000 ||
    dev->device == PCI_DEVICE_ID_INTERG_2010)) ||
  (dev->vendor == PCI_VENDOR_ID_ITE &&
   dev->device == PCI_DEVICE_ID_ITE_8152));

}
