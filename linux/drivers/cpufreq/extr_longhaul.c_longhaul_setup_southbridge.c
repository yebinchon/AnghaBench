
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCI_DEVICE_ID_VIA_8235 ;
 int PCI_DEVICE_ID_VIA_8237 ;
 int PCI_VENDOR_ID_VIA ;
 int acpi_regs_addr ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pr_info (char*,int) ;

__attribute__((used)) static int longhaul_setup_southbridge(void)
{
 struct pci_dev *dev;
 u8 pci_cmd;


 dev = pci_get_device(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8235, ((void*)0));
 if (dev == ((void*)0))

  dev = pci_get_device(PCI_VENDOR_ID_VIA,
         PCI_DEVICE_ID_VIA_8237, ((void*)0));
 if (dev != ((void*)0)) {

  pci_read_config_byte(dev, 0xec, &pci_cmd);
  pci_cmd &= ~(1 << 2);
  pci_write_config_byte(dev, 0xec, pci_cmd);
  pci_read_config_byte(dev, 0xe4, &pci_cmd);
  pci_cmd &= ~(1 << 7);
  pci_write_config_byte(dev, 0xe4, pci_cmd);
  pci_read_config_byte(dev, 0xe5, &pci_cmd);
  pci_cmd |= 1 << 7;
  pci_write_config_byte(dev, 0xe5, pci_cmd);

  pci_read_config_byte(dev, 0x81, &pci_cmd);
  if (pci_cmd & 1 << 7) {
   pci_read_config_dword(dev, 0x88, &acpi_regs_addr);
   acpi_regs_addr &= 0xff00;
   pr_info("ACPI I/O at 0x%x\n", acpi_regs_addr);
  }

  pci_dev_put(dev);
  return 1;
 }
 return 0;
}
