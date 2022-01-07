
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XEN_UNPLUG_ALL ;
 int XEN_UNPLUG_ALL_NICS ;
 int __xen_has_pv_device (int) ;

bool xen_has_pv_nic_devices(void)
{
 return __xen_has_pv_device(XEN_UNPLUG_ALL_NICS | XEN_UNPLUG_ALL);
}
