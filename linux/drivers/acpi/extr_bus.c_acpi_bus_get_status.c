
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int bus_id; } ;
struct TYPE_3__ {int present; scalar_t__ functional; } ;
struct acpi_device {TYPE_2__ pnp; TYPE_1__ status; int handle; scalar_t__ dep_unmet; } ;
typedef int acpi_status ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEFAULT ;
 int ENODEV ;
 int acpi_bus_get_status_handle (int ,unsigned long long*) ;
 scalar_t__ acpi_device_always_present (struct acpi_device*) ;
 scalar_t__ acpi_device_is_battery (struct acpi_device*) ;
 int acpi_set_device_status (struct acpi_device*,unsigned long long) ;

int acpi_bus_get_status(struct acpi_device *device)
{
 acpi_status status;
 unsigned long long sta;

 if (acpi_device_always_present(device)) {
  acpi_set_device_status(device, ACPI_STA_DEFAULT);
  return 0;
 }


 if (acpi_device_is_battery(device) && device->dep_unmet) {
  acpi_set_device_status(device, 0);
  return 0;
 }

 status = acpi_bus_get_status_handle(device->handle, &sta);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 acpi_set_device_status(device, sta);

 if (device->status.functional && !device->status.present) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device [%s] status [%08x]: "
         "functional but not present;\n",
   device->pnp.bus_id, (u32)sta));
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device [%s] status [%08x]\n",
     device->pnp.bus_id, (u32)sta));
 return 0;
}
