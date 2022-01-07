
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expected_btypes; } ;
union acpi_predefined_info {TYPE_1__ info; } ;
struct TYPE_4__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ common; } ;
typedef int u32 ;
struct acpi_namespace_node {int flags; } ;
struct acpi_evaluate_info {int return_flags; union acpi_operand_object* parent_package; union acpi_predefined_info* predefined; } ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_NOT_PACKAGE_ELEMENT ;
 int ACPI_OBJECT_REPAIRED ;
 scalar_t__ ACPI_RTYPE_ALL ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_AML_OPERAND_TYPE ;
 scalar_t__ AE_AML_OPERAND_VALUE ;
 scalar_t__ AE_CTRL_RETURN_VALUE ;
 scalar_t__ AE_OK ;
 int ANOBJ_EVALUATED ;
 scalar_t__ acpi_gbl_disable_auto_repair ;
 scalar_t__ acpi_ns_check_object_type (struct acpi_evaluate_info*,union acpi_operand_object**,scalar_t__,int ) ;
 scalar_t__ acpi_ns_check_package (struct acpi_evaluate_info*,union acpi_operand_object**) ;
 scalar_t__ acpi_ns_complex_repairs (struct acpi_evaluate_info*,struct acpi_namespace_node*,scalar_t__,union acpi_operand_object**) ;

acpi_status
acpi_ns_check_return_value(struct acpi_namespace_node *node,
      struct acpi_evaluate_info *info,
      u32 user_param_count,
      acpi_status return_status,
      union acpi_operand_object **return_object_ptr)
{
 acpi_status status;
 const union acpi_predefined_info *predefined;



 predefined = info->predefined;
 if (!predefined) {
  return (AE_OK);
 }





 if ((return_status != AE_OK) && (return_status != AE_CTRL_RETURN_VALUE)) {
  return (AE_OK);
 }
 if (acpi_gbl_disable_auto_repair ||
     (!predefined->info.expected_btypes) ||
     (predefined->info.expected_btypes == ACPI_RTYPE_ALL)) {
  return (AE_OK);
 }





 status = acpi_ns_check_object_type(info, return_object_ptr,
        predefined->info.expected_btypes,
        ACPI_NOT_PACKAGE_ELEMENT);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }






 if (!(*return_object_ptr)) {
  goto exit;
 }





 if ((*return_object_ptr)->common.type == ACPI_TYPE_PACKAGE) {
  info->parent_package = *return_object_ptr;
  status = acpi_ns_check_package(info, return_object_ptr);
  if (ACPI_FAILURE(status)) {



   if ((status != AE_AML_OPERAND_TYPE) &&
       (status != AE_AML_OPERAND_VALUE)) {
    goto exit;
   }
  }
 }
 status = acpi_ns_complex_repairs(info, node, status, return_object_ptr);

exit:





 if (ACPI_FAILURE(status) || (info->return_flags & ACPI_OBJECT_REPAIRED)) {
  node->flags |= ANOBJ_EVALUATED;
 }

 return (status);
}
