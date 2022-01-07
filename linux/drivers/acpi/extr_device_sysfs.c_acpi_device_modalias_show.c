
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int __acpi_device_modalias (int ,char*,int) ;
 int to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t
acpi_device_modalias_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return __acpi_device_modalias(to_acpi_device(dev), buf, 1024);
}
