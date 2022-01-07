
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct skd_device {int pdev; } ;
typedef int lwstr ;


 int PCI_CAP_ID_EXP ;
 int pci_find_capability (int ,int ) ;
 int pci_read_config_word (int ,int,int*) ;
 int snprintf (char*,int,char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *skd_pci_info(struct skd_device *skdev, char *str)
{
 int pcie_reg;

 strcpy(str, "PCIe (");
 pcie_reg = pci_find_capability(skdev->pdev, PCI_CAP_ID_EXP);

 if (pcie_reg) {

  char lwstr[6];
  uint16_t pcie_lstat, lspeed, lwidth;

  pcie_reg += 0x12;
  pci_read_config_word(skdev->pdev, pcie_reg, &pcie_lstat);
  lspeed = pcie_lstat & (0xF);
  lwidth = (pcie_lstat & 0x3F0) >> 4;

  if (lspeed == 1)
   strcat(str, "2.5GT/s ");
  else if (lspeed == 2)
   strcat(str, "5.0GT/s ");
  else
   strcat(str, "<unknown> ");
  snprintf(lwstr, sizeof(lwstr), "%dX)", lwidth);
  strcat(str, lwstr);
 }
 return str;
}
