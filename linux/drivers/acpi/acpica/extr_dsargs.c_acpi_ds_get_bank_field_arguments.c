
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int length; int address; int space_id; } ;
struct TYPE_7__ {int aml_start; int aml_length; } ;
struct TYPE_6__ {struct acpi_namespace_node* node; } ;
struct TYPE_5__ {int flags; } ;
union acpi_operand_object {TYPE_4__ region; TYPE_3__ extra; TYPE_2__ bank_field; TYPE_1__ common; } ;
struct acpi_namespace_node {int parent; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_EXEC (int ) ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_TYPE_LOCAL_BANK_FIELD ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_execute_arguments (struct acpi_namespace_node*,int ,int ,int ) ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_ut_add_address_range (int ,int ,int ,struct acpi_namespace_node*) ;
 int acpi_ut_display_init_pathname (int ,struct acpi_namespace_node*,int *) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int ds_get_bank_field_arguments ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_get_bank_field_arguments(union acpi_operand_object *obj_desc)
{
 union acpi_operand_object *extra_desc;
 struct acpi_namespace_node *node;
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ds_get_bank_field_arguments, obj_desc);

 if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
  return_ACPI_STATUS(AE_OK);
 }



 extra_desc = acpi_ns_get_secondary_object(obj_desc);
 node = obj_desc->bank_field.node;

 ACPI_DEBUG_EXEC(acpi_ut_display_init_pathname
   (ACPI_TYPE_LOCAL_BANK_FIELD, node, ((void*)0)));

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "[%4.4s] BankField Arg Init\n",
     acpi_ut_get_node_name(node)));



 status = acpi_ds_execute_arguments(node, node->parent,
        extra_desc->extra.aml_length,
        extra_desc->extra.aml_start);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_ut_add_address_range(obj_desc->region.space_id,
        obj_desc->region.address,
        obj_desc->region.length, node);
 return_ACPI_STATUS(status);
}
