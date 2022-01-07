
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef scalar_t__ u32 ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 int EOVERFLOW ;
 int EPROTO ;
 scalar_t__ U32_MAX ;

__attribute__((used)) static int acpi_copy_property_array_u32(const union acpi_object *items,
     u32 *val, size_t nval)
{
 int i;

 for (i = 0; i < nval; i++) {
  if (items[i].type != ACPI_TYPE_INTEGER)
   return -EPROTO;
  if (items[i].integer.value > U32_MAX)
   return -EOVERFLOW;

  val[i] = items[i].integer.value;
 }
 return 0;
}
