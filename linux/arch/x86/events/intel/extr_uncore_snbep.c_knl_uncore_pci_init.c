
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int knl_pci_uncores ;
 int knl_uncore_pci_driver ;
 int snb_pci2phy_map_init (int) ;
 int * uncore_pci_driver ;
 int uncore_pci_uncores ;

int knl_uncore_pci_init(void)
{
 int ret;


 ret = snb_pci2phy_map_init(0x7814);
 if (ret)
  return ret;
 ret = snb_pci2phy_map_init(0x7817);
 if (ret)
  return ret;
 uncore_pci_uncores = knl_pci_uncores;
 uncore_pci_driver = &knl_uncore_pci_driver;
 return 0;
}
