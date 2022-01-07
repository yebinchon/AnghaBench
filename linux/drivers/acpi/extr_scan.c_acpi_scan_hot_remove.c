
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_device {int dev; TYPE_1__* handler; int handle; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;
struct TYPE_4__ {scalar_t__ demand_offline; } ;
struct TYPE_3__ {TYPE_2__ hotplug; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 unsigned long long ACPI_STA_DEVICE_ENABLED ;
 scalar_t__ AE_NOT_FOUND ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int acpi_bus_trim (struct acpi_device*) ;
 scalar_t__ acpi_evaluate_ej0 (int ) ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_evaluate_lck (int ,int ) ;
 int acpi_handle_warn (int ,char*,unsigned long long) ;
 int acpi_scan_is_offline (struct acpi_device*,int) ;
 int acpi_scan_try_to_offline (struct acpi_device*) ;
 int dev_name (int *) ;

__attribute__((used)) static int acpi_scan_hot_remove(struct acpi_device *device)
{
 acpi_handle handle = device->handle;
 unsigned long long sta;
 acpi_status status;

 if (device->handler && device->handler->hotplug.demand_offline) {
  if (!acpi_scan_is_offline(device, 1))
   return -EBUSY;
 } else {
  int error = acpi_scan_try_to_offline(device);
  if (error)
   return error;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
  "Hot-removing device %s...\n", dev_name(&device->dev)));

 acpi_bus_trim(device);

 acpi_evaluate_lck(handle, 0);



 status = acpi_evaluate_ej0(handle);
 if (status == AE_NOT_FOUND)
  return -ENODEV;
 else if (ACPI_FAILURE(status))
  return -EIO;





 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &sta);
 if (ACPI_FAILURE(status)) {
  acpi_handle_warn(handle,
   "Status check after eject failed (0x%x)\n", status);
 } else if (sta & ACPI_STA_DEVICE_ENABLED) {
  acpi_handle_warn(handle,
   "Eject incomplete - status 0x%llx\n", sta);
 }

 return 0;
}
