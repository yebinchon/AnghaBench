
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_6__ {int aml_length; int aml_start; } ;
union acpi_operand_object {TYPE_3__ method; } ;
struct acpi_walk_state {int descending_callback; } ;
struct TYPE_4__ {int integer; } ;
struct acpi_namespace_node {int owner_id; TYPE_1__ name; } ;
typedef int acpi_status ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int AE_NO_MEMORY ;
 int AML_METHOD_OP ;
 struct acpi_walk_state* acpi_ds_create_walk_state (int ,int *,int *,int *) ;
 int acpi_ds_delete_walk_state (struct acpi_walk_state*) ;
 int acpi_ds_detect_named_opcodes ;
 int acpi_ds_init_aml_walk (struct acpi_walk_state*,union acpi_parse_object*,struct acpi_namespace_node*,int ,int ,int *,int ) ;
 union acpi_parse_object* acpi_ps_alloc_op (int ,int ) ;
 int acpi_ps_delete_parse_tree (union acpi_parse_object*) ;
 int acpi_ps_free_op (union acpi_parse_object*) ;
 int acpi_ps_parse_aml (struct acpi_walk_state*) ;
 int acpi_ps_set_name (union acpi_parse_object*,int ) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int ds_auto_serialize_method ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_auto_serialize_method(struct acpi_namespace_node *node,
         union acpi_operand_object *obj_desc)
{
 acpi_status status;
 union acpi_parse_object *op = ((void*)0);
 struct acpi_walk_state *walk_state;

 ACPI_FUNCTION_TRACE_PTR(ds_auto_serialize_method, node);

 ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
     "Method auto-serialization parse [%4.4s] %p\n",
     acpi_ut_get_node_name(node), node));



 op = acpi_ps_alloc_op(AML_METHOD_OP, obj_desc->method.aml_start);
 if (!op) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 acpi_ps_set_name(op, node->name.integer);
 op->common.node = node;



 walk_state =
     acpi_ds_create_walk_state(node->owner_id, ((void*)0), ((void*)0), ((void*)0));
 if (!walk_state) {
  acpi_ps_free_op(op);
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 status = acpi_ds_init_aml_walk(walk_state, op, node,
           obj_desc->method.aml_start,
           obj_desc->method.aml_length, ((void*)0), 0);
 if (ACPI_FAILURE(status)) {
  acpi_ds_delete_walk_state(walk_state);
  acpi_ps_free_op(op);
  return_ACPI_STATUS(status);
 }

 walk_state->descending_callback = acpi_ds_detect_named_opcodes;



 status = acpi_ps_parse_aml(walk_state);

 acpi_ps_delete_parse_tree(op);
 return_ACPI_STATUS(status);
}
