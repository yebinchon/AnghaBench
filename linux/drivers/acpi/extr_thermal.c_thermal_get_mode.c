
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct acpi_thermal* devdata; } ;
struct acpi_thermal {scalar_t__ tz_enabled; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int EINVAL ;
 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;

__attribute__((used)) static int thermal_get_mode(struct thermal_zone_device *thermal,
    enum thermal_device_mode *mode)
{
 struct acpi_thermal *tz = thermal->devdata;

 if (!tz)
  return -EINVAL;

 *mode = tz->tz_enabled ? THERMAL_DEVICE_ENABLED :
  THERMAL_DEVICE_DISABLED;

 return 0;
}
