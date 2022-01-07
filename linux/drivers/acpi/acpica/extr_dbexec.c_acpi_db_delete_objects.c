
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t count; union acpi_object* elements; } ;
struct TYPE_3__ {union acpi_object* pointer; } ;
union acpi_object {int type; TYPE_2__ package; TYPE_1__ buffer; } ;
typedef size_t u32 ;


 int ACPI_FREE (union acpi_object*) ;



void acpi_db_delete_objects(u32 count, union acpi_object *objects)
{
 u32 i;

 for (i = 0; i < count; i++) {
  switch (objects[i].type) {
  case 129:

   ACPI_FREE(objects[i].buffer.pointer);
   break;

  case 128:



   acpi_db_delete_objects(objects[i].package.count,
            objects[i].package.elements);



   ACPI_FREE(objects[i].package.elements);
   break;

  default:

   break;
  }
 }
}
