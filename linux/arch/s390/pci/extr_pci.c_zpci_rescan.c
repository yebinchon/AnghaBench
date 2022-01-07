
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clp_rescan_pci_devices_simple () ;
 scalar_t__ zpci_is_enabled () ;

void zpci_rescan(void)
{
 if (zpci_is_enabled())
  clp_rescan_pci_devices_simple();
}
