
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_root {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 struct acpi_pci_root* acpi_driver_data (struct acpi_device*) ;
 scalar_t__ acpi_match_device_ids (struct acpi_device*,int ) ;
 int root_device_ids ;

struct acpi_pci_root *acpi_pci_find_root(acpi_handle handle)
{
 struct acpi_pci_root *root;
 struct acpi_device *device;

 if (acpi_bus_get_device(handle, &device) ||
     acpi_match_device_ids(device, root_device_ids))
  return ((void*)0);

 root = acpi_driver_data(device);

 return root;
}
