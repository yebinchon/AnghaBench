
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void pci_fixup_dec21142(struct pci_dev *dev)
{
 pci_write_config_dword(dev, 0x40, 0x80000000);
}
