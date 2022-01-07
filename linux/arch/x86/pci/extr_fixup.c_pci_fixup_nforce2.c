
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;


 int dev_warn (int *,char*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void pci_fixup_nforce2(struct pci_dev *dev)
{
 u32 val;
 pci_read_config_dword(dev, 0x6c, &val);




 if ((val & 0x00FF0000) != 0x00010000) {
  dev_warn(&dev->dev, "nForce2 C1 Halt Disconnect fixup\n");
  pci_write_config_dword(dev, 0x6c, (val & 0xFF00FFFF) | 0x00010000);
 }
}
