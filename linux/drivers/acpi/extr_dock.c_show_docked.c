
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int handle; } ;
struct device_attribute {int dummy; } ;
struct device {struct dock_station* platform_data; } ;
struct acpi_device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_device_enumerated (struct acpi_device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_docked(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct dock_station *dock_station = dev->platform_data;
 struct acpi_device *adev = ((void*)0);

 acpi_bus_get_device(dock_station->handle, &adev);
 return snprintf(buf, PAGE_SIZE, "%u\n", acpi_device_enumerated(adev));
}
