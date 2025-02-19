
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct acpi_thermal* devdata; } ;
struct acpi_thermal {int tz_enabled; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EINVAL ;
 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;
 int acpi_thermal_check (struct acpi_thermal*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int thermal_set_mode(struct thermal_zone_device *thermal,
    enum thermal_device_mode mode)
{
 struct acpi_thermal *tz = thermal->devdata;
 int enable;

 if (!tz)
  return -EINVAL;




 if (mode == THERMAL_DEVICE_ENABLED)
  enable = 1;
 else if (mode == THERMAL_DEVICE_DISABLED) {
  enable = 0;
  pr_warn("thermal zone will be disabled\n");
 } else
  return -EINVAL;

 if (enable != tz->tz_enabled) {
  tz->tz_enabled = enable;
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
   "%s kernel ACPI thermal control\n",
   tz->tz_enabled ? "Enable" : "Disable"));
  acpi_thermal_check(tz);
 }
 return 0;
}
