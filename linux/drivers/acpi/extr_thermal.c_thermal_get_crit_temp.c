
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thermal_zone_device {struct acpi_thermal* devdata; } ;
struct TYPE_4__ {scalar_t__ valid; } ;
struct TYPE_5__ {int temperature; TYPE_1__ flags; } ;
struct TYPE_6__ {TYPE_2__ critical; } ;
struct acpi_thermal {int kelvin_offset; TYPE_3__ trips; } ;


 int DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET (int ,int ) ;
 int EINVAL ;

__attribute__((used)) static int thermal_get_crit_temp(struct thermal_zone_device *thermal,
    int *temperature)
{
 struct acpi_thermal *tz = thermal->devdata;

 if (tz->trips.critical.flags.valid) {
  *temperature = DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(
    tz->trips.critical.temperature,
    tz->kelvin_offset);
  return 0;
 } else
  return -EINVAL;
}
