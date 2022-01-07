
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_thermal {int dummy; } ;
struct TYPE_2__ {int device_class; } ;
struct acpi_device {int dev; TYPE_1__ pnp; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;



 int ACPI_TRIPS_REFRESH_DEVICES ;
 int ACPI_TRIPS_REFRESH_THRESHOLDS ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int ) ;
 struct acpi_thermal* acpi_driver_data (struct acpi_device*) ;
 int acpi_thermal_check (struct acpi_thermal*) ;
 int acpi_thermal_trips_update (struct acpi_thermal*,int ) ;
 int dev_name (int *) ;

__attribute__((used)) static void acpi_thermal_notify(struct acpi_device *device, u32 event)
{
 struct acpi_thermal *tz = acpi_driver_data(device);


 if (!tz)
  return;

 switch (event) {
 case 129:
  acpi_thermal_check(tz);
  break;
 case 128:
  acpi_thermal_trips_update(tz, ACPI_TRIPS_REFRESH_THRESHOLDS);
  acpi_thermal_check(tz);
  acpi_bus_generate_netlink_event(device->pnp.device_class,
        dev_name(&device->dev), event, 0);
  break;
 case 130:
  acpi_thermal_trips_update(tz, ACPI_TRIPS_REFRESH_DEVICES);
  acpi_thermal_check(tz);
  acpi_bus_generate_netlink_event(device->pnp.device_class,
        dev_name(&device->dev), event, 0);
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }
}
