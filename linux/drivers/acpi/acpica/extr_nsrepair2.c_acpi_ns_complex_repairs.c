
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_repair_info {int (* repair_function ) (struct acpi_evaluate_info*,union acpi_operand_object**) ;} ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_evaluate_info {int dummy; } ;
typedef int acpi_status ;


 struct acpi_repair_info* acpi_ns_match_complex_repair (struct acpi_namespace_node*) ;
 int stub1 (struct acpi_evaluate_info*,union acpi_operand_object**) ;

acpi_status
acpi_ns_complex_repairs(struct acpi_evaluate_info *info,
   struct acpi_namespace_node *node,
   acpi_status validate_status,
   union acpi_operand_object **return_object_ptr)
{
 const struct acpi_repair_info *predefined;
 acpi_status status;



 predefined = acpi_ns_match_complex_repair(node);
 if (!predefined) {
  return (validate_status);
 }

 status = predefined->repair_function(info, return_object_ptr);
 return (status);
}
