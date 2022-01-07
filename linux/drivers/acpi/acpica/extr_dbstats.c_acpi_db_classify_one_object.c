
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef size_t u32 ;
struct acpi_namespace_node {size_t type; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;
struct TYPE_4__ {int opcode; } ;


 size_t ACPI_TYPE_NS_NODE_MAX ;
 int AE_OK ;
 int acpi_db_enumerate_object (union acpi_operand_object*) ;
 int * acpi_gbl_node_type_count ;
 int acpi_gbl_node_type_count_misc ;
 int acpi_gbl_num_nodes ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 TYPE_1__* acpi_ps_get_depth_next (int ,TYPE_1__*) ;
 scalar_t__ acpi_ps_is_named_op (int ) ;
 scalar_t__ is_method ;
 size_t num_grammar_elements ;
 size_t num_method_elements ;
 size_t num_nodes ;
 TYPE_1__* op ;
 int root ;
 size_t size_of_acpi_objects ;
 size_t size_of_method_trees ;
 size_t size_of_node_entries ;
 size_t size_of_parse_tree ;

__attribute__((used)) static acpi_status
acpi_db_classify_one_object(acpi_handle obj_handle,
       u32 nesting_level,
       void *context, void **return_value)
{
 struct acpi_namespace_node *node;
 union acpi_operand_object *obj_desc;
 u32 type;

 acpi_gbl_num_nodes++;

 node = (struct acpi_namespace_node *)obj_handle;
 obj_desc = acpi_ns_get_attached_object(node);

 acpi_db_enumerate_object(obj_desc);

 type = node->type;
 if (type > ACPI_TYPE_NS_NODE_MAX) {
  acpi_gbl_node_type_count_misc++;
 } else {
  acpi_gbl_node_type_count[type]++;
 }

 return (AE_OK);
}
