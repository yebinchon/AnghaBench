
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; union acpi_object* elements; } ;
union acpi_object {TYPE_1__ package; int type; } ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 union acpi_object* ACPI_ALLOCATE_ZEROED (int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_PACKAGE ;
 int AE_OK ;
 int DB_DEFAULT_PKG_ELEMENTS ;
 int acpi_db_convert_to_object (int ,char*,union acpi_object*) ;
 int acpi_db_delete_objects (int,union acpi_object*) ;
 char* acpi_db_get_next_token (char*,char**,int *) ;

acpi_status acpi_db_convert_to_package(char *string, union acpi_object *object)
{
 char *this;
 char *next;
 u32 i;
 acpi_object_type type;
 union acpi_object *elements;
 acpi_status status;

 elements =
     ACPI_ALLOCATE_ZEROED(DB_DEFAULT_PKG_ELEMENTS *
     sizeof(union acpi_object));

 this = string;
 for (i = 0; i < (DB_DEFAULT_PKG_ELEMENTS - 1); i++) {
  this = acpi_db_get_next_token(this, &next, &type);
  if (!this) {
   break;
  }



  status = acpi_db_convert_to_object(type, this, &elements[i]);
  if (ACPI_FAILURE(status)) {
   acpi_db_delete_objects(i + 1, elements);
   ACPI_FREE(elements);
   return (status);
  }

  this = next;
 }

 object->type = ACPI_TYPE_PACKAGE;
 object->package.count = i;
 object->package.elements = elements;
 return (AE_OK);
}
