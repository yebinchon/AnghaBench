
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKX_CPUNODEID ;
 int SKX_GIDNIDMAP ;
 int snbep_pci2phy_map_init (int,int ,int ,int) ;
 int snr_pci_uncores ;
 int snr_uncore_pci_driver ;
 int * uncore_pci_driver ;
 int uncore_pci_uncores ;

int snr_uncore_pci_init(void)
{

 int ret = snbep_pci2phy_map_init(0x3460, SKX_CPUNODEID,
      SKX_GIDNIDMAP, 1);

 if (ret)
  return ret;

 uncore_pci_uncores = snr_pci_uncores;
 uncore_pci_driver = &snr_uncore_pci_driver;
 return 0;
}
