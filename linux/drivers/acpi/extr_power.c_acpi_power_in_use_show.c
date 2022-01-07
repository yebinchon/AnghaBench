
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_power_resource {int ref_count; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int to_acpi_device (struct device*) ;
 struct acpi_power_resource* to_power_resource (int ) ;

__attribute__((used)) static ssize_t acpi_power_in_use_show(struct device *dev,
          struct device_attribute *attr,
          char *buf) {
 struct acpi_power_resource *resource;

 resource = to_power_resource(to_acpi_device(dev));
 return sprintf(buf, "%u\n", !!resource->ref_count);
}
