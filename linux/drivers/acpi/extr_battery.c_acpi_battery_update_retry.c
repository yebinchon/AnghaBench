
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int dummy; } ;


 int acpi_battery_update (struct acpi_battery*,int) ;
 int msleep (int) ;

__attribute__((used)) static int acpi_battery_update_retry(struct acpi_battery *battery)
{
 int retry, ret;

 for (retry = 5; retry; retry--) {
  ret = acpi_battery_update(battery, 0);
  if (!ret)
   break;

  msleep(20);
 }
 return ret;
}
