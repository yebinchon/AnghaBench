
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {scalar_t__* pointer; } ;
struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ integer; TYPE_2__ string; TYPE_1__ package; } ;
typedef scalar_t__ u8 ;
typedef int u64 ;
struct acpi_offsets {int offset; scalar_t__ mode; } ;
struct acpi_battery {int dummy; } ;


 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_STRING ;
 int EFAULT ;
 int strncpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int extract_package(struct acpi_battery *battery,
      union acpi_object *package,
      const struct acpi_offsets *offsets, int num)
{
 int i;
 union acpi_object *element;
 if (package->type != ACPI_TYPE_PACKAGE)
  return -EFAULT;
 for (i = 0; i < num; ++i) {
  if (package->package.count <= i)
   return -EFAULT;
  element = &package->package.elements[i];
  if (offsets[i].mode) {
   u8 *ptr = (u8 *)battery + offsets[i].offset;
   if (element->type == ACPI_TYPE_STRING ||
       element->type == ACPI_TYPE_BUFFER)
    strncpy(ptr, element->string.pointer, 32);
   else if (element->type == ACPI_TYPE_INTEGER) {
    strncpy(ptr, (u8 *)&element->integer.value,
     sizeof(u64));
    ptr[sizeof(u64)] = 0;
   } else
    *ptr = 0;
  } else {
   int *x = (int *)((u8 *)battery + offsets[i].offset);
   *x = (element->type == ACPI_TYPE_INTEGER) ?
    element->integer.value : -1;
  }
 }
 return 0;
}
