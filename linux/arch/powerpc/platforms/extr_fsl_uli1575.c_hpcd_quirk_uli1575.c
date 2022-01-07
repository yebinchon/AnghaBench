
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int machine_is (int ) ;
 int mpc86xx_hpcd ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void hpcd_quirk_uli1575(struct pci_dev *dev)
{
 u32 temp32;

 if (!machine_is(mpc86xx_hpcd))
  return;


 pci_read_config_dword(dev, 0x48, &temp32);
 pci_write_config_dword(dev, 0x48, (temp32 | 1<<26));


 pci_read_config_dword(dev, 0x90, &temp32);
 pci_write_config_dword(dev, 0x90, (temp32 | 1<<22));
}
