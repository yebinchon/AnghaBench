
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_1__* elements; } ;
union acpi_object {TYPE_2__ package; } ;
struct acpi_device_data {int dummy; } ;
typedef scalar_t__ acpi_object_type ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ ACPI_TYPE_ANY ;
 int ACPI_TYPE_PACKAGE ;
 int EPROTO ;
 int acpi_data_get_property (struct acpi_device_data const*,char const*,int ,union acpi_object const**) ;

__attribute__((used)) static int acpi_data_get_property_array(const struct acpi_device_data *data,
     const char *name,
     acpi_object_type type,
     const union acpi_object **obj)
{
 const union acpi_object *prop;
 int ret, i;

 ret = acpi_data_get_property(data, name, ACPI_TYPE_PACKAGE, &prop);
 if (ret)
  return ret;

 if (type != ACPI_TYPE_ANY) {

  for (i = 0; i < prop->package.count; i++)
   if (prop->package.elements[i].type != type)
    return -EPROTO;
 }
 if (obj)
  *obj = prop;

 return 0;
}
