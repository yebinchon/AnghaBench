
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 scalar_t__ EMMA2RH_USB_SLOT ;
 scalar_t__ PCI_SLOT (int ) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void nec_usb_controller_fixup(struct pci_dev *dev)
{
 if (PCI_SLOT(dev->devfn) == EMMA2RH_USB_SLOT)

  pci_write_config_dword(dev, 0xe4, 1 << 5);
}
