
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u64 ;
typedef int u32 ;
struct acpi_evaluate_info {int return_flags; int full_pathname; TYPE_3__* parent_package; } ;
typedef int acpi_status ;
struct TYPE_5__ {int reference_count; } ;
struct TYPE_6__ {TYPE_2__ common; } ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_STRING ;
 int AE_AML_OPERAND_TYPE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_buffer_object (int ) ;
 union acpi_operand_object* acpi_ut_create_integer_object (int ) ;
 union acpi_operand_object* acpi_ut_create_string_object (int ) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ns_repair_null_element ;

acpi_status
acpi_ns_repair_null_element(struct acpi_evaluate_info *info,
       u32 expected_btypes,
       u32 package_index,
       union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object *new_object;

 ACPI_FUNCTION_NAME(ns_repair_null_element);



 if (return_object) {
  return (AE_OK);
 }







 if (expected_btypes & ACPI_RTYPE_INTEGER) {



  new_object = acpi_ut_create_integer_object((u64)0);
 } else if (expected_btypes & ACPI_RTYPE_STRING) {



  new_object = acpi_ut_create_string_object(0);
 } else if (expected_btypes & ACPI_RTYPE_BUFFER) {



  new_object = acpi_ut_create_buffer_object(0);
 } else {


  return (AE_AML_OPERAND_TYPE);
 }

 if (!new_object) {
  return (AE_NO_MEMORY);
 }



 new_object->common.reference_count =
     info->parent_package->common.reference_count;

 ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
     "%s: Converted NULL package element to expected %s at index %u\n",
     info->full_pathname,
     acpi_ut_get_object_type_name(new_object),
     package_index));

 *return_object_ptr = new_object;
 info->return_flags |= ACPI_OBJECT_REPAIRED;
 return (AE_OK);
}
