
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct attribute_group {int dummy; } ;
struct acpi_device {int dummy; } ;


 int acpi_power_expose_list (struct acpi_device*,struct list_head*,struct attribute_group const*) ;
 int acpi_power_hide_list (struct acpi_device*,struct list_head*,struct attribute_group const*) ;

__attribute__((used)) static void acpi_power_expose_hide(struct acpi_device *adev,
       struct list_head *resources,
       const struct attribute_group *attr_group,
       bool expose)
{
 if (expose)
  acpi_power_expose_list(adev, resources, attr_group);
 else
  acpi_power_hide_list(adev, resources, attr_group);
}
