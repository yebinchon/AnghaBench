
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_battery {int alarm; int lock; TYPE_1__* device; int flags; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_BATTERY_ALARM_PRESENT ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_execute_simple_method (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int acpi_battery_set_alarm(struct acpi_battery *battery)
{
 acpi_status status = 0;

 if (!acpi_battery_present(battery) ||
     !test_bit(ACPI_BATTERY_ALARM_PRESENT, &battery->flags))
  return -ENODEV;

 mutex_lock(&battery->lock);
 status = acpi_execute_simple_method(battery->device->handle, "_BTP",
         battery->alarm);
 mutex_unlock(&battery->lock);

 if (ACPI_FAILURE(status))
  return -ENODEV;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Alarm set to %d\n", battery->alarm));
 return 0;
}
