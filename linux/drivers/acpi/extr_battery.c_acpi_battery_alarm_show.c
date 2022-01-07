
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_battery {int alarm; } ;
typedef int ssize_t ;


 int dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct acpi_battery* to_acpi_battery (int ) ;

__attribute__((used)) static ssize_t acpi_battery_alarm_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct acpi_battery *battery = to_acpi_battery(dev_get_drvdata(dev));
 return sprintf(buf, "%d\n", battery->alarm * 1000);
}
