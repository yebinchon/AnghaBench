
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; char* pointer; } ;
struct TYPE_3__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ string; TYPE_1__ common; } ;
struct acpi_evaluate_info {int full_pathname; int return_flags; int node_flags; } ;
typedef int acpi_status ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 scalar_t__ ACPI_TYPE_STRING ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_string_object (scalar_t__) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_repair_HID ;
 scalar_t__ toupper (int) ;

__attribute__((used)) static acpi_status
acpi_ns_repair_HID(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object *new_string;
 char *source;
 char *dest;

 ACPI_FUNCTION_NAME(ns_repair_HID);



 if (return_object->common.type != ACPI_TYPE_STRING) {
  return (AE_OK);
 }

 if (return_object->string.length == 0) {
  ACPI_WARN_PREDEFINED((AE_INFO,
          info->full_pathname, info->node_flags,
          "Invalid zero-length _HID or _CID string"));



  info->return_flags |= ACPI_OBJECT_REPAIRED;
  return (AE_OK);
 }



 new_string = acpi_ut_create_string_object(return_object->string.length);
 if (!new_string) {
  return (AE_NO_MEMORY);
 }







 source = return_object->string.pointer;
 if (*source == '*') {
  source++;
  new_string->string.length--;

  ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
      "%s: Removed invalid leading asterisk\n",
      info->full_pathname));
 }
 for (dest = new_string->string.pointer; *source; dest++, source++) {
  *dest = (char)toupper((int)*source);
 }

 acpi_ut_remove_reference(return_object);
 *return_object_ptr = new_string;
 return (AE_OK);
}
