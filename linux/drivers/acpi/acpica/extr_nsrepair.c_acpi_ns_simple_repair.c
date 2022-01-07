
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u32 ;
struct acpi_simple_repair_info {int (* object_converter ) (int ,union acpi_operand_object*,union acpi_operand_object**) ;} ;
struct acpi_evaluate_info {int return_btype; int return_flags; int full_pathname; int node; } ;
typedef int acpi_status ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_NOT_PACKAGE_ELEMENT ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_OBJECT_WRAPPED ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_NONE ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_RTYPE_STRING ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_NO_RETURN_VALUE ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_convert_to_buffer (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ns_convert_to_integer (union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ns_convert_to_string (union acpi_operand_object*,union acpi_operand_object**) ;
 struct acpi_simple_repair_info* acpi_ns_match_simple_repair (int ,int,int) ;
 int acpi_ns_repair_null_element (struct acpi_evaluate_info*,int,int,union acpi_operand_object**) ;
 int acpi_ns_wrap_with_package (struct acpi_evaluate_info*,union acpi_operand_object*,union acpi_operand_object**) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_simple_repair ;
 int stub1 (int ,union acpi_operand_object*,union acpi_operand_object**) ;

acpi_status
acpi_ns_simple_repair(struct acpi_evaluate_info *info,
        u32 expected_btypes,
        u32 package_index,
        union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object *new_object = ((void*)0);
 acpi_status status;
 const struct acpi_simple_repair_info *predefined;

 ACPI_FUNCTION_NAME(ns_simple_repair);





 predefined = acpi_ns_match_simple_repair(info->node,
       info->return_btype,
       package_index);
 if (predefined) {
  if (!return_object) {
   ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
           ACPI_WARN_ALWAYS,
           "Missing expected return value"));
  }

  status = predefined->object_converter(info->node, return_object,
            &new_object);
  if (ACPI_FAILURE(status)) {



   ACPI_EXCEPTION((AE_INFO, status,
     "During return object analysis"));
   return (status);
  }
  if (new_object) {
   goto object_repaired;
  }
 }





 if (info->return_btype & expected_btypes) {
  return (AE_OK);
 }
 if (!return_object) {
  if (expected_btypes && (!(expected_btypes & ACPI_RTYPE_NONE))) {
   if (package_index != ACPI_NOT_PACKAGE_ELEMENT) {
    ACPI_WARN_PREDEFINED((AE_INFO,
            info->full_pathname,
            ACPI_WARN_ALWAYS,
            "Found unexpected NULL package element"));

    status =
        acpi_ns_repair_null_element(info,
        expected_btypes,
        package_index,
        return_object_ptr);
    if (ACPI_SUCCESS(status)) {
     return (AE_OK);
    }
   } else {
    ACPI_WARN_PREDEFINED((AE_INFO,
            info->full_pathname,
            ACPI_WARN_ALWAYS,
            "Missing expected return value"));
   }

   return (AE_AML_NO_RETURN_VALUE);
  }
 }

 if (expected_btypes & ACPI_RTYPE_INTEGER) {
  status = acpi_ns_convert_to_integer(return_object, &new_object);
  if (ACPI_SUCCESS(status)) {
   goto object_repaired;
  }
 }
 if (expected_btypes & ACPI_RTYPE_STRING) {
  status = acpi_ns_convert_to_string(return_object, &new_object);
  if (ACPI_SUCCESS(status)) {
   goto object_repaired;
  }
 }
 if (expected_btypes & ACPI_RTYPE_BUFFER) {
  status = acpi_ns_convert_to_buffer(return_object, &new_object);
  if (ACPI_SUCCESS(status)) {
   goto object_repaired;
  }
 }
 if (expected_btypes & ACPI_RTYPE_PACKAGE) {
  status =
      acpi_ns_wrap_with_package(info, return_object, &new_object);
  if (ACPI_SUCCESS(status)) {




   *return_object_ptr = new_object;
   info->return_flags |= ACPI_OBJECT_REPAIRED;
   return (AE_OK);
  }
 }



 return (AE_AML_OPERAND_TYPE);

object_repaired:



 if (package_index != ACPI_NOT_PACKAGE_ELEMENT) {



  if (!(info->return_flags & ACPI_OBJECT_WRAPPED)) {
   new_object->common.reference_count =
       return_object->common.reference_count;
  }

  ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
      "%s: Converted %s to expected %s at Package index %u\n",
      info->full_pathname,
      acpi_ut_get_object_type_name(return_object),
      acpi_ut_get_object_type_name(new_object),
      package_index));
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
      "%s: Converted %s to expected %s\n",
      info->full_pathname,
      acpi_ut_get_object_type_name(return_object),
      acpi_ut_get_object_type_name(new_object)));
 }



 acpi_ut_remove_reference(return_object);
 *return_object_ptr = new_object;
 info->return_flags |= ACPI_OBJECT_REPAIRED;
 return (AE_OK);
}
