
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCI_DEVICE_ID_VIA_8601_0 ;
 int PCI_DEVICE_ID_VIA_8605_0 ;
 int PCI_DEVICE_ID_VIA_862X_0 ;
 int PCI_VENDOR_ID_VIA ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int enable_arbiter_disable(void)
{
 struct pci_dev *dev;
 int status = 1;
 int reg;
 u8 pci_cmd;


 reg = 0x78;
 dev = pci_get_device(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8601_0,
        ((void*)0));

 if (dev == ((void*)0))
  dev = pci_get_device(PCI_VENDOR_ID_VIA,
         PCI_DEVICE_ID_VIA_8605_0, ((void*)0));

 if (dev == ((void*)0)) {
  reg = 0x76;
  dev = pci_get_device(PCI_VENDOR_ID_VIA,
         PCI_DEVICE_ID_VIA_862X_0, ((void*)0));

  if (dev == ((void*)0))
   dev = pci_get_device(PCI_VENDOR_ID_VIA, 0x7259, ((void*)0));
 }
 if (dev != ((void*)0)) {

  pci_read_config_byte(dev, reg, &pci_cmd);
  if (!(pci_cmd & 1<<7)) {
   pci_cmd |= 1<<7;
   pci_write_config_byte(dev, reg, pci_cmd);
   pci_read_config_byte(dev, reg, &pci_cmd);
   if (!(pci_cmd & 1<<7)) {
    pr_err("Can't enable access to port 0x22\n");
    status = 0;
   }
  }
  pci_dev_put(dev);
  return status;
 }
 return 0;
}
