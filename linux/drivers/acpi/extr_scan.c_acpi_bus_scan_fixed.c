
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match_driver; } ;
struct acpi_device {int dev; TYPE_1__ flags; } ;
struct TYPE_4__ {int flags; } ;


 int ACPI_BUS_TYPE_POWER_BUTTON ;
 int ACPI_BUS_TYPE_SLEEP_BUTTON ;
 int ACPI_FADT_POWER_BUTTON ;
 int ACPI_FADT_SLEEP_BUTTON ;
 int ACPI_STA_DEFAULT ;
 int acpi_add_single_object (struct acpi_device**,int *,int ,int ) ;
 TYPE_2__ acpi_gbl_FADT ;
 int device_attach (int *) ;
 int device_init_wakeup (int *,int) ;

__attribute__((used)) static int acpi_bus_scan_fixed(void)
{
 int result = 0;




 if (!(acpi_gbl_FADT.flags & ACPI_FADT_POWER_BUTTON)) {
  struct acpi_device *device = ((void*)0);

  result = acpi_add_single_object(&device, ((void*)0),
      ACPI_BUS_TYPE_POWER_BUTTON,
      ACPI_STA_DEFAULT);
  if (result)
   return result;

  device->flags.match_driver = 1;
  result = device_attach(&device->dev);
  if (result < 0)
   return result;

  device_init_wakeup(&device->dev, 1);
 }

 if (!(acpi_gbl_FADT.flags & ACPI_FADT_SLEEP_BUTTON)) {
  struct acpi_device *device = ((void*)0);

  result = acpi_add_single_object(&device, ((void*)0),
      ACPI_BUS_TYPE_SLEEP_BUTTON,
      ACPI_STA_DEFAULT);
  if (result)
   return result;

  device->flags.match_driver = 1;
  result = device_attach(&device->dev);
 }

 return result < 0 ? result : 0;
}
