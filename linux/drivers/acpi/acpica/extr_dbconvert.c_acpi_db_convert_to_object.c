
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
struct TYPE_4__ {char* pointer; int length; } ;
union acpi_object {int type; TYPE_1__ integer; TYPE_2__ string; } ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_object_type ;



 int ACPI_TYPE_INTEGER ;


 int AE_OK ;
 int acpi_db_convert_to_buffer (char*,union acpi_object*) ;
 int acpi_db_convert_to_package (char*,union acpi_object*) ;
 int acpi_ut_strtoul64 (char*,int *) ;
 int strlen (char*) ;

acpi_status
acpi_db_convert_to_object(acpi_object_type type,
     char *string, union acpi_object *object)
{
 acpi_status status = AE_OK;

 switch (type) {
 case 128:

  object->type = 128;
  object->string.pointer = string;
  object->string.length = (u32)strlen(string);
  break;

 case 130:

  status = acpi_db_convert_to_buffer(string, object);
  break;

 case 129:

  status = acpi_db_convert_to_package(string, object);
  break;

 default:

  object->type = ACPI_TYPE_INTEGER;
  status = acpi_ut_strtoul64(string, &object->integer.value);
  break;
 }

 return (status);
}
