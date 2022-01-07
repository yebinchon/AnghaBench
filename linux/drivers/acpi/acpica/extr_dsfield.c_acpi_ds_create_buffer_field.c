
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int length; int data; } ;
struct TYPE_7__ {int string; } ;
struct TYPE_8__ {scalar_t__ aml_opcode; struct acpi_namespace_node* node; TYPE_1__ value; } ;
union acpi_parse_object {TYPE_5__ named; TYPE_2__ common; } ;
struct TYPE_12__ {struct acpi_namespace_node* node; } ;
struct TYPE_10__ {int aml_length; int aml_start; } ;
struct TYPE_9__ {union acpi_operand_object* next_object; } ;
union acpi_operand_object {TYPE_6__ buffer_field; TYPE_4__ extra; TYPE_3__ common; } ;
typedef int u32 ;
struct acpi_walk_state {int parse_flags; int scope_info; scalar_t__ method_node; struct acpi_namespace_node* deferred_node; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_ERROR_NAMESPACE (int ,int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_TEMPORARY ;
 int ACPI_PARSE_EXECUTE ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_BUFFER_FIELD ;
 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 scalar_t__ AML_CREATE_FIELD_OP ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ns_lookup (int ,int ,int ,int ,int,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 union acpi_parse_object* acpi_ps_get_arg (union acpi_parse_object*,int) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_create_buffer_field ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_create_buffer_field(union acpi_parse_object *op,
       struct acpi_walk_state *walk_state)
{
 union acpi_parse_object *arg;
 struct acpi_namespace_node *node;
 acpi_status status;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *second_desc = ((void*)0);
 u32 flags;

 ACPI_FUNCTION_TRACE(ds_create_buffer_field);




 if (op->common.aml_opcode == AML_CREATE_FIELD_OP) {



  arg = acpi_ps_get_arg(op, 3);
 } else {


  arg = acpi_ps_get_arg(op, 2);
 }

 if (!arg) {
  return_ACPI_STATUS(AE_AML_NO_OPERAND);
 }

 if (walk_state->deferred_node) {
  node = walk_state->deferred_node;
  status = AE_OK;
 } else {


  if (!(walk_state->parse_flags & ACPI_PARSE_EXECUTE)) {
   ACPI_ERROR((AE_INFO, "Parse execute mode is not set"));
   return_ACPI_STATUS(AE_AML_INTERNAL);
  }



  flags = ACPI_NS_NO_UPSEARCH | ACPI_NS_DONT_OPEN_SCOPE |
      ACPI_NS_ERROR_IF_FOUND;





  if (walk_state->method_node &&
      !(walk_state->parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
   flags |= ACPI_NS_TEMPORARY;
  }



  status = acpi_ns_lookup(walk_state->scope_info,
     arg->common.value.string, ACPI_TYPE_ANY,
     ACPI_IMODE_LOAD_PASS1, flags,
     walk_state, &node);
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR_NAMESPACE(walk_state->scope_info,
          arg->common.value.string, status);
   return_ACPI_STATUS(status);
  }
 }






 op->common.node = node;






 obj_desc = acpi_ns_get_attached_object(node);
 if (obj_desc) {
  return_ACPI_STATUS(AE_OK);
 }
 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_BUFFER_FIELD);
 if (!obj_desc) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }





 second_desc = obj_desc->common.next_object;
 second_desc->extra.aml_start = op->named.data;
 second_desc->extra.aml_length = op->named.length;
 obj_desc->buffer_field.node = node;



 status = acpi_ns_attach_object(node, obj_desc, ACPI_TYPE_BUFFER_FIELD);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }

cleanup:



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
