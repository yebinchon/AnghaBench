
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ pointer; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_1__ package; } ;
struct acpi_device_data {int properties; } ;
typedef int guid_t ;


 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int acpi_data_add_props (struct acpi_device_data*,int const*,union acpi_object const*) ;
 int acpi_is_property_guid (int *) ;
 int acpi_properties_format_valid (union acpi_object const*) ;
 int list_empty (int *) ;

__attribute__((used)) static bool acpi_extract_properties(const union acpi_object *desc,
        struct acpi_device_data *data)
{
 int i;

 if (desc->package.count % 2)
  return 0;


 for (i = 0; i < desc->package.count; i += 2) {
  const union acpi_object *guid, *properties;

  guid = &desc->package.elements[i];
  properties = &desc->package.elements[i + 1];





  if (guid->type != ACPI_TYPE_BUFFER ||
      guid->buffer.length != 16 ||
      properties->type != ACPI_TYPE_PACKAGE)
   break;

  if (!acpi_is_property_guid((guid_t *)guid->buffer.pointer))
   continue;





  if (!acpi_properties_format_valid(properties))
   continue;

  acpi_data_add_props(data, (const guid_t *)guid->buffer.pointer,
        properties);
 }

 return !list_empty(&data->properties);
}
