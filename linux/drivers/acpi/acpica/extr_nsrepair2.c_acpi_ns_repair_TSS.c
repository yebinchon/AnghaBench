
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_evaluate_info {int node; } ;
typedef int acpi_status ;


 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_SORT_DESCENDING ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_ns_check_sorted_list (struct acpi_evaluate_info*,union acpi_operand_object*,int ,int,int,int ,char*) ;
 int acpi_ns_get_node (int ,char*,int ,struct acpi_namespace_node**) ;

__attribute__((used)) static acpi_status
acpi_ns_repair_TSS(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 acpi_status status;
 struct acpi_namespace_node *node;
 status = acpi_ns_get_node(info->node, "^_PSS",
      ACPI_NS_NO_UPSEARCH, &node);
 if (ACPI_SUCCESS(status)) {
  return (AE_OK);
 }

 status = acpi_ns_check_sorted_list(info, return_object, 0, 5, 1,
        ACPI_SORT_DESCENDING,
        "PowerDissipation");

 return (status);
}
