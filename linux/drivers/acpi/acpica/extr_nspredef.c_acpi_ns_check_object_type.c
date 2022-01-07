
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ascii; } ;
struct TYPE_4__ {int type; TYPE_1__ name; } ;
union acpi_operand_object {TYPE_2__ node; } ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {scalar_t__ return_btype; int node_flags; int full_pathname; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_NOT_PACKAGE_ELEMENT ;
 scalar_t__ ACPI_RTYPE_ANY ;
 scalar_t__ ACPI_RTYPE_REFERENCE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_check_reference (struct acpi_evaluate_info*,union acpi_operand_object*) ;
 scalar_t__ acpi_ns_get_bitmapped_type (union acpi_operand_object*) ;
 int acpi_ns_simple_repair (struct acpi_evaluate_info*,scalar_t__,scalar_t__,union acpi_operand_object**) ;
 int acpi_ut_get_expected_return_types (char*,scalar_t__) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int ) ;

acpi_status
acpi_ns_check_object_type(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr,
     u32 expected_btypes, u32 package_index)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 acpi_status status = AE_OK;
 char type_buffer[96];



 if (return_object &&
     ACPI_GET_DESCRIPTOR_TYPE(return_object) == ACPI_DESC_TYPE_NAMED) {
  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Invalid return type - Found a Namespace node [%4.4s] type %s",
          return_object->node.name.ascii,
          acpi_ut_get_type_name(return_object->node.
           type)));
  return (AE_AML_OPERAND_TYPE);
 }
 info->return_btype = acpi_ns_get_bitmapped_type(return_object);
 if (info->return_btype == ACPI_RTYPE_ANY) {


  goto type_error_exit;
 }



 if ((info->return_btype & expected_btypes) == ACPI_RTYPE_REFERENCE) {
  status = acpi_ns_check_reference(info, return_object);
  return (status);
 }



 status = acpi_ns_simple_repair(info, expected_btypes,
           package_index, return_object_ptr);
 if (ACPI_SUCCESS(status)) {
  return (AE_OK);
 }

type_error_exit:



 acpi_ut_get_expected_return_types(type_buffer, expected_btypes);

 if (!return_object) {
  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Expected return object of type %s",
          type_buffer));
 } else if (package_index == ACPI_NOT_PACKAGE_ELEMENT) {
  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Return type mismatch - found %s, expected %s",
          acpi_ut_get_object_type_name
          (return_object), type_buffer));
 } else {
  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Return Package type mismatch at index %u - "
          "found %s, expected %s", package_index,
          acpi_ut_get_object_type_name
          (return_object), type_buffer));
 }

 return (AE_AML_OPERAND_TYPE);
}
