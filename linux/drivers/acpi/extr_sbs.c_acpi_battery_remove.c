
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_sbs {struct acpi_battery* battery; } ;
struct acpi_battery {TYPE_1__* bat; scalar_t__ have_sysfs_alarm; } ;
struct TYPE_2__ {int dev; } ;


 int alarm_attr ;
 int device_remove_file (int *,int *) ;
 int power_supply_unregister (TYPE_1__*) ;

__attribute__((used)) static void acpi_battery_remove(struct acpi_sbs *sbs, int id)
{
 struct acpi_battery *battery = &sbs->battery[id];

 if (battery->bat) {
  if (battery->have_sysfs_alarm)
   device_remove_file(&battery->bat->dev, &alarm_attr);
  power_supply_unregister(battery->bat);
 }
}
