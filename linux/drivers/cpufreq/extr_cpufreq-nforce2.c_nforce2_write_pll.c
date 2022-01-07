
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFORCE2_PLLADR ;
 int NFORCE2_PLLREG ;
 int nforce2_dev ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void nforce2_write_pll(int pll)
{
 int temp;


 pci_write_config_dword(nforce2_dev, NFORCE2_PLLADR, 0);


 for (temp = 0; temp <= 0x3f; temp++)
  pci_write_config_dword(nforce2_dev, NFORCE2_PLLREG, pll);
}
