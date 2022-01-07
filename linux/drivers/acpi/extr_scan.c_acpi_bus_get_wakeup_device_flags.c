
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid; } ;
struct TYPE_4__ {scalar_t__ prepare_count; TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ wakeup; int dev; int handle; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int acpi_bus_extract_wakeup_device_power_package (struct acpi_device*) ;
 int acpi_device_sleep_wake (struct acpi_device*,int ,int ,int ) ;
 int acpi_has_method (int ,char*) ;
 int acpi_wakeup_gpe_init (struct acpi_device*) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static void acpi_bus_get_wakeup_device_flags(struct acpi_device *device)
{
 int err;


 if (!acpi_has_method(device->handle, "_PRW"))
  return;

 err = acpi_bus_extract_wakeup_device_power_package(device);
 if (err) {
  dev_err(&device->dev, "_PRW evaluation error: %d\n", err);
  return;
 }

 device->wakeup.flags.valid = acpi_wakeup_gpe_init(device);
 device->wakeup.prepare_count = 0;







 err = acpi_device_sleep_wake(device, 0, 0, 0);
 if (err)
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
    "error in _DSW or _PSW evaluation\n"));
}
