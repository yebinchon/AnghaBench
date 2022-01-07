
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKX_CPUNODEID ;
 int SKX_GIDNIDMAP ;
 int skx_pci_uncores ;
 int skx_uncore_pci_driver ;
 int snbep_pci2phy_map_init (int,int ,int ,int) ;
 int * uncore_pci_driver ;
 int uncore_pci_uncores ;

int skx_uncore_pci_init(void)
{

 int ret = snbep_pci2phy_map_init(0x2014, SKX_CPUNODEID, SKX_GIDNIDMAP, 0);

 if (ret)
  return ret;

 uncore_pci_uncores = skx_pci_uncores;
 uncore_pci_driver = &skx_uncore_pci_driver;
 return 0;
}
