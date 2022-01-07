
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __acpi_device_modalias (int ,char*,int) ;
 int acpi_companion_match (struct device*) ;

int acpi_device_modalias(struct device *dev, char *buf, int size)
{
 return __acpi_device_modalias(acpi_companion_match(dev), buf, size);
}
