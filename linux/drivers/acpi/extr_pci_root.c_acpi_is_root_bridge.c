
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_match_device_ids (struct acpi_device*,int ) ;
 int root_device_ids ;

int acpi_is_root_bridge(acpi_handle handle)
{
 int ret;
 struct acpi_device *device;

 ret = acpi_bus_get_device(handle, &device);
 if (ret)
  return 0;

 ret = acpi_match_device_ids(device, root_device_ids);
 if (ret)
  return 0;
 else
  return 1;
}
