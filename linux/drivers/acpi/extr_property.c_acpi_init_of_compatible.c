
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union acpi_object {int dummy; } acpi_object ;
struct TYPE_5__ {int of_compatible_ok; } ;
struct TYPE_8__ {union acpi_object const* of_compatible; } ;
struct acpi_device {TYPE_1__ flags; TYPE_4__ data; TYPE_3__* parent; } ;
struct TYPE_6__ {scalar_t__ of_compatible_ok; } ;
struct TYPE_7__ {TYPE_2__ flags; } ;


 int ACPI_TYPE_STRING ;
 int acpi_data_get_property_array (TYPE_4__*,char*,int ,union acpi_object const**) ;
 int acpi_dev_get_property (struct acpi_device*,char*,int ,union acpi_object const**) ;

__attribute__((used)) static void acpi_init_of_compatible(struct acpi_device *adev)
{
 const union acpi_object *of_compatible;
 int ret;

 ret = acpi_data_get_property_array(&adev->data, "compatible",
        ACPI_TYPE_STRING, &of_compatible);
 if (ret) {
  ret = acpi_dev_get_property(adev, "compatible",
         ACPI_TYPE_STRING, &of_compatible);
  if (ret) {
   if (adev->parent
       && adev->parent->flags.of_compatible_ok)
    goto out;

   return;
  }
 }
 adev->data.of_compatible = of_compatible;

 out:
 adev->flags.of_compatible_ok = 1;
}
