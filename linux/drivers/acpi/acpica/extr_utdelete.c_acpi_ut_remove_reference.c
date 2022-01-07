
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int ACPI_GET_FUNCTION_NAME ;
 int REF_DECREMENT ;
 int acpi_ut_update_object_reference (union acpi_operand_object*,int ) ;
 int acpi_ut_valid_internal_object (union acpi_operand_object*) ;
 int ut_remove_reference ;

void acpi_ut_remove_reference(union acpi_operand_object *object)
{

 ACPI_FUNCTION_NAME(ut_remove_reference);





 if (!object ||
     (ACPI_GET_DESCRIPTOR_TYPE(object) == ACPI_DESC_TYPE_NAMED)) {
  return;
 }



 if (!acpi_ut_valid_internal_object(object)) {
  return;
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_ALLOCATIONS,
         "%s: Obj %p Current Refs=%X [To Be Decremented]\n",
         ACPI_GET_FUNCTION_NAME, object,
         object->common.reference_count));






 (void)acpi_ut_update_object_reference(object, REF_DECREMENT);
 return;
}
