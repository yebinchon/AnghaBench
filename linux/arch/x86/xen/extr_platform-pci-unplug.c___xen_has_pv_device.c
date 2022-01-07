
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_has_pv_devices () ;
 scalar_t__ xen_hvm_domain () ;
 int xen_platform_pci_unplug ;

__attribute__((used)) static bool __xen_has_pv_device(int state)
{

 if (xen_hvm_domain() && (xen_platform_pci_unplug & state))
  return 1;

 return xen_has_pv_devices();
}
