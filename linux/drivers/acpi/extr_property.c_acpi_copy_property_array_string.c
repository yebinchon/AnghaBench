
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ string; } ;


 scalar_t__ ACPI_TYPE_STRING ;
 int EPROTO ;

__attribute__((used)) static int acpi_copy_property_array_string(const union acpi_object *items,
        char **val, size_t nval)
{
 int i;

 for (i = 0; i < nval; i++) {
  if (items[i].type != ACPI_TYPE_STRING)
   return -EPROTO;

  val[i] = items[i].string.pointer;
 }
 return nval;
}
