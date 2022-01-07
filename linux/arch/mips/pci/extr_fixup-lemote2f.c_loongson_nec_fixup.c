
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;

__attribute__((used)) static void loongson_nec_fixup(struct pci_dev *pdev)
{
 unsigned int val;

 pci_read_config_dword(pdev, 0xe0, &val);

 pci_write_config_dword(pdev, 0xe0, (val & ~3) | 0x2);
}
