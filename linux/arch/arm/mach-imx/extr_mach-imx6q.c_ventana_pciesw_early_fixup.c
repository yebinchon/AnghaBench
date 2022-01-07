
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ devfn; } ;


 int msleep (int) ;
 int of_machine_is_compatible (char*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void ventana_pciesw_early_fixup(struct pci_dev *dev)
{
 u32 dw;

 if (!of_machine_is_compatible("gw,ventana"))
  return;

 if (dev->devfn != 0)
  return;

 pci_read_config_dword(dev, 0x62c, &dw);
 dw |= 0xaaa8;
 pci_write_config_dword(dev, 0x62c, dw);

 pci_read_config_dword(dev, 0x644, &dw);
 dw |= 0xfe;
 pci_write_config_dword(dev, 0x644, dw);

 msleep(100);
}
