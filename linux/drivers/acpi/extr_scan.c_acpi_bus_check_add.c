
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_BUS_TYPE_POWER ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;
 int acpi_add_power_resource (int ) ;
 int acpi_add_single_object (struct acpi_device**,int ,int,unsigned long long) ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_type_and_status (int ,int*,unsigned long long*) ;
 int acpi_device_dep_initialize (struct acpi_device*) ;
 int acpi_scan_init_hotplug (struct acpi_device*) ;

__attribute__((used)) static acpi_status acpi_bus_check_add(acpi_handle handle, u32 lvl_not_used,
          void *not_used, void **return_value)
{
 struct acpi_device *device = ((void*)0);
 int type;
 unsigned long long sta;
 int result;

 acpi_bus_get_device(handle, &device);
 if (device)
  goto out;

 result = acpi_bus_type_and_status(handle, &type, &sta);
 if (result)
  return AE_OK;

 if (type == ACPI_BUS_TYPE_POWER) {
  acpi_add_power_resource(handle);
  return AE_OK;
 }

 acpi_add_single_object(&device, handle, type, sta);
 if (!device)
  return AE_CTRL_DEPTH;

 acpi_scan_init_hotplug(device);
 acpi_device_dep_initialize(device);

 out:
 if (!*return_value)
  *return_value = device;

 return AE_OK;
}
