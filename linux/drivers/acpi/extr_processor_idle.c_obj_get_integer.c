
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef int u32 ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 int EINVAL ;

__attribute__((used)) static int obj_get_integer(union acpi_object *obj, u32 *value)
{
 if (obj->type != ACPI_TYPE_INTEGER)
  return -EINVAL;

 *value = obj->integer.value;
 return 0;
}
