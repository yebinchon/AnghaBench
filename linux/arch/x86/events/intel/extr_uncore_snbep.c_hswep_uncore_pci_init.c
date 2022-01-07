
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNBEP_CPUNODEID ;
 int SNBEP_GIDNIDMAP ;
 int hswep_pci_uncores ;
 int hswep_uncore_pci_driver ;
 int snbep_pci2phy_map_init (int,int ,int ,int) ;
 int * uncore_pci_driver ;
 int uncore_pci_uncores ;

int hswep_uncore_pci_init(void)
{
 int ret = snbep_pci2phy_map_init(0x2f1e, SNBEP_CPUNODEID, SNBEP_GIDNIDMAP, 1);
 if (ret)
  return ret;
 uncore_pci_uncores = hswep_pci_uncores;
 uncore_pci_driver = &hswep_uncore_pci_driver;
 return 0;
}
