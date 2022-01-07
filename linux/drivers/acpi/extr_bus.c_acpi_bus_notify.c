
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* notify ) (struct acpi_device*,int ) ;} ;
struct acpi_driver {int flags; TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; } ;
typedef int acpi_handle ;


 int ACPI_DRIVER_ALL_NOTIFY_EVENTS ;
 int ACPI_OST_SC_NON_SPECIFIC_FAILURE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 struct acpi_device* acpi_bus_get_acpi_device (int ) ;
 int acpi_bus_put_acpi_device (struct acpi_device*) ;
 int acpi_evaluate_ost (int ,int ,int ,int *) ;
 int acpi_handle_debug (int ,char*,...) ;
 int acpi_handle_err (int ,char*) ;
 int acpi_hotplug_schedule (struct acpi_device*,int ) ;
 int stub1 (struct acpi_device*,int ) ;

__attribute__((used)) static void acpi_bus_notify(acpi_handle handle, u32 type, void *data)
{
 struct acpi_device *adev;
 struct acpi_driver *driver;
 u32 ost_code = ACPI_OST_SC_NON_SPECIFIC_FAILURE;
 bool hotplug_event = 0;

 switch (type) {
 case 135:
  acpi_handle_debug(handle, "ACPI_NOTIFY_BUS_CHECK event\n");
  hotplug_event = 1;
  break;

 case 133:
  acpi_handle_debug(handle, "ACPI_NOTIFY_DEVICE_CHECK event\n");
  hotplug_event = 1;
  break;

 case 131:
  acpi_handle_debug(handle, "ACPI_NOTIFY_DEVICE_WAKE event\n");
  break;

 case 130:
  acpi_handle_debug(handle, "ACPI_NOTIFY_EJECT_REQUEST event\n");
  hotplug_event = 1;
  break;

 case 132:
  acpi_handle_debug(handle, "ACPI_NOTIFY_DEVICE_CHECK_LIGHT event\n");

  break;

 case 129:
  acpi_handle_err(handle, "Device cannot be configured due "
    "to a frequency mismatch\n");
  break;

 case 134:
  acpi_handle_err(handle, "Device cannot be configured due "
    "to a bus mode mismatch\n");
  break;

 case 128:
  acpi_handle_err(handle, "Device has suffered a power fault\n");
  break;

 default:
  acpi_handle_debug(handle, "Unknown event type 0x%x\n", type);
  break;
 }

 adev = acpi_bus_get_acpi_device(handle);
 if (!adev)
  goto err;

 driver = adev->driver;
 if (driver && driver->ops.notify &&
     (driver->flags & ACPI_DRIVER_ALL_NOTIFY_EVENTS))
  driver->ops.notify(adev, type);

 if (!hotplug_event) {
  acpi_bus_put_acpi_device(adev);
  return;
 }

 if (ACPI_SUCCESS(acpi_hotplug_schedule(adev, type)))
  return;

 acpi_bus_put_acpi_device(adev);

 err:
 acpi_evaluate_ost(handle, type, ost_code, ((void*)0));
}
