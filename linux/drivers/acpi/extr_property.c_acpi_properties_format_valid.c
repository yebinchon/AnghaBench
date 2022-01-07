
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_1__ package; } ;


 scalar_t__ ACPI_TYPE_STRING ;
 int acpi_property_value_ok (union acpi_object*) ;

__attribute__((used)) static bool acpi_properties_format_valid(const union acpi_object *properties)
{
 int i;

 for (i = 0; i < properties->package.count; i++) {
  const union acpi_object *property;

  property = &properties->package.elements[i];




  if (property->package.count != 2
      || property->package.elements[0].type != ACPI_TYPE_STRING
      || !acpi_property_value_ok(&property->package.elements[1]))
   return 0;
 }
 return 1;
}
