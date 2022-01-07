
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pointer; } ;
struct TYPE_3__ {int type; } ;
union acpi_operand_object {TYPE_2__ string; TYPE_1__ common; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_string_object (scalar_t__) ;
 char* acpi_ut_get_type_name (int ) ;
 int strcat (int ,char const*) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static acpi_status
acpi_ex_convert_to_object_type_string(union acpi_operand_object *obj_desc,
          union acpi_operand_object **result_desc)
{
 union acpi_operand_object *return_desc;
 const char *type_string;

 type_string = acpi_ut_get_type_name(obj_desc->common.type);

 return_desc = acpi_ut_create_string_object(((acpi_size)strlen(type_string) + 9));
 if (!return_desc) {
  return (AE_NO_MEMORY);
 }

 strcpy(return_desc->string.pointer, "[");
 strcat(return_desc->string.pointer, type_string);
 strcat(return_desc->string.pointer, " Object]");

 *result_desc = return_desc;
 return (AE_OK);
}
