
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_25__ {scalar_t__ valid; } ;
struct TYPE_26__ {int tsp; TYPE_7__ flags; } ;
struct TYPE_21__ {scalar_t__ valid; } ;
struct TYPE_22__ {TYPE_3__ flags; } ;
struct TYPE_19__ {scalar_t__ valid; } ;
struct TYPE_20__ {TYPE_1__ flags; } ;
struct TYPE_27__ {TYPE_8__ passive; TYPE_6__* active; TYPE_4__ hot; TYPE_2__ critical; } ;
struct acpi_thermal {int polling_frequency; int tz_enabled; TYPE_13__* thermal_zone; TYPE_11__* device; TYPE_9__ trips; } ;
typedef int acpi_status ;
struct TYPE_23__ {scalar_t__ valid; } ;
struct TYPE_24__ {TYPE_5__ flags; } ;
struct TYPE_15__ {int kobj; } ;
struct TYPE_18__ {int id; TYPE_10__ device; } ;
struct TYPE_17__ {int kobj; } ;
struct TYPE_16__ {TYPE_12__ dev; int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_THERMAL_MAX_ACTIVE ;
 int ENODEV ;
 scalar_t__ IS_ERR (TYPE_13__*) ;
 int acpi_bus_attach_private_data (int ,TYPE_13__*) ;
 int acpi_thermal_zone_ops ;
 int dev_info (TYPE_12__*,char*,int ) ;
 int sysfs_create_link (int *,int *,char*) ;
 void* thermal_zone_device_register (char*,int,int ,struct acpi_thermal*,int *,int *,int,int) ;

__attribute__((used)) static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
{
 int trips = 0;
 int result;
 acpi_status status;
 int i;

 if (tz->trips.critical.flags.valid)
  trips++;

 if (tz->trips.hot.flags.valid)
  trips++;

 if (tz->trips.passive.flags.valid)
  trips++;

 for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE &&
   tz->trips.active[i].flags.valid; i++, trips++);

 if (tz->trips.passive.flags.valid)
  tz->thermal_zone =
   thermal_zone_device_register("acpitz", trips, 0, tz,
      &acpi_thermal_zone_ops, ((void*)0),
           tz->trips.passive.tsp*100,
           tz->polling_frequency*100);
 else
  tz->thermal_zone =
   thermal_zone_device_register("acpitz", trips, 0, tz,
      &acpi_thermal_zone_ops, ((void*)0),
      0, tz->polling_frequency*100);
 if (IS_ERR(tz->thermal_zone))
  return -ENODEV;

 result = sysfs_create_link(&tz->device->dev.kobj,
       &tz->thermal_zone->device.kobj, "thermal_zone");
 if (result)
  return result;

 result = sysfs_create_link(&tz->thermal_zone->device.kobj,
       &tz->device->dev.kobj, "device");
 if (result)
  return result;

 status = acpi_bus_attach_private_data(tz->device->handle,
            tz->thermal_zone);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 tz->tz_enabled = 1;

 dev_info(&tz->device->dev, "registered as thermal_zone%d\n",
   tz->thermal_zone->id);
 return 0;
}
