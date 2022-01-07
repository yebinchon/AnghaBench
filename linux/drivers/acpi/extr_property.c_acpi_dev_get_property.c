
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct acpi_device {int data; } ;
typedef int acpi_object_type ;


 int EINVAL ;
 int acpi_data_get_property (int *,char const*,int ,union acpi_object const**) ;

int acpi_dev_get_property(const struct acpi_device *adev, const char *name,
     acpi_object_type type, const union acpi_object **obj)
{
 return adev ? acpi_data_get_property(&adev->data, name, type, obj) : -EINVAL;
}
