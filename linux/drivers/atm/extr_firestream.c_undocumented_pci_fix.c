
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void undocumented_pci_fix(struct pci_dev *pdev)
{
 u32 tint;
 pci_read_config_dword (pdev, 0x28, &tint);
 if (tint != 0x80) {
  tint = 0x80;
  pci_write_config_dword (pdev, 0x28, tint);
 }
}
