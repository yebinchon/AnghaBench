
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int acpiphp_check_host_bridge (struct acpi_device*) ;

__attribute__((used)) static int acpi_pci_root_scan_dependent(struct acpi_device *adev)
{
 acpiphp_check_host_bridge(adev);
 return 0;
}
