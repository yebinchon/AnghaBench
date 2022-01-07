
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_battery {unsigned long alarm; } ;
typedef size_t ssize_t ;


 scalar_t__ acpi_battery_present (struct acpi_battery*) ;
 int acpi_battery_set_alarm (struct acpi_battery*) ;
 int dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned long*) ;
 struct acpi_battery* to_acpi_battery (int ) ;

__attribute__((used)) static ssize_t acpi_battery_alarm_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 unsigned long x;
 struct acpi_battery *battery = to_acpi_battery(dev_get_drvdata(dev));
 if (sscanf(buf, "%lu\n", &x) == 1)
  battery->alarm = x/1000;
 if (acpi_battery_present(battery))
  acpi_battery_set_alarm(battery);
 return count;
}
