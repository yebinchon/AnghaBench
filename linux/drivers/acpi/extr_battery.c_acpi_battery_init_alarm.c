
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_battery {scalar_t__ design_capacity_warning; scalar_t__ alarm; int flags; TYPE_1__* device; } ;
struct TYPE_2__ {int handle; } ;


 int ACPI_BATTERY_ALARM_PRESENT ;
 int acpi_battery_set_alarm (struct acpi_battery*) ;
 int acpi_has_method (int ,char*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int acpi_battery_init_alarm(struct acpi_battery *battery)
{

 if (!acpi_has_method(battery->device->handle, "_BTP")) {
  clear_bit(ACPI_BATTERY_ALARM_PRESENT, &battery->flags);
  return 0;
 }
 set_bit(ACPI_BATTERY_ALARM_PRESENT, &battery->flags);
 if (!battery->alarm)
  battery->alarm = battery->design_capacity_warning;
 return acpi_battery_set_alarm(battery);
}
