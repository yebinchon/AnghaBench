
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNBEP_CPUNODEID ;
 int SNBEP_GIDNIDMAP ;
 int ivbep_pci_uncores ;
 int ivbep_uncore_pci_driver ;
 int snbep_pci2phy_map_init (int,int ,int ,int) ;
 int * uncore_pci_driver ;
 int uncore_pci_uncores ;

int ivbep_uncore_pci_init(void)
{
 int ret = snbep_pci2phy_map_init(0x0e1e, SNBEP_CPUNODEID, SNBEP_GIDNIDMAP, 1);
 if (ret)
  return ret;
 uncore_pci_uncores = ivbep_pci_uncores;
 uncore_pci_driver = &ivbep_uncore_pci_driver;
 return 0;
}
