
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNBEP_CPUNODEID ;
 int SNBEP_GIDNIDMAP ;
 int bdx_pci_uncores ;
 int bdx_uncore_pci_driver ;
 int snbep_pci2phy_map_init (int,int ,int ,int) ;
 int * uncore_pci_driver ;
 int uncore_pci_uncores ;

int bdx_uncore_pci_init(void)
{
 int ret = snbep_pci2phy_map_init(0x6f1e, SNBEP_CPUNODEID, SNBEP_GIDNIDMAP, 1);

 if (ret)
  return ret;
 uncore_pci_uncores = bdx_pci_uncores;
 uncore_pci_driver = &bdx_uncore_pci_driver;
 return 0;
}
