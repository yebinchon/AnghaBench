
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XEN_UNPLUG_UNNECESSARY ;
 int xen_domain () ;
 int xen_platform_pci_unplug ;
 scalar_t__ xen_pv_domain () ;

bool xen_has_pv_and_legacy_disk_devices(void)
{
 if (!xen_domain())
  return 0;


 if (xen_pv_domain())
  return 0;

 if (xen_platform_pci_unplug & XEN_UNPLUG_UNNECESSARY)
  return 1;

 return 0;
}
