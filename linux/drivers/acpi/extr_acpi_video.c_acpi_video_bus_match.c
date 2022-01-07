
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {scalar_t__ handle; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_VIDEO_BUS_NAME ;
 int AE_ALREADY_EXISTS ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int acpi_bus_get_device (scalar_t__,struct acpi_device**) ;
 int acpi_device_name (struct acpi_device*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static acpi_status
acpi_video_bus_match(acpi_handle handle, u32 level, void *context,
   void **return_value)
{
 struct acpi_device *device = context;
 struct acpi_device *sibling;
 int result;

 if (handle == device->handle)
  return AE_CTRL_TERMINATE;

 result = acpi_bus_get_device(handle, &sibling);
 if (result)
  return AE_OK;

 if (!strcmp(acpi_device_name(sibling), ACPI_VIDEO_BUS_NAME))
   return AE_ALREADY_EXISTS;

 return AE_OK;
}
