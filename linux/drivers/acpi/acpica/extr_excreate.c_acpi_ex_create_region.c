
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int * handler; struct acpi_namespace_node* node; scalar_t__ length; scalar_t__ address; int space_id; } ;
struct TYPE_12__ {struct acpi_namespace_node* scope_node; int * method_REG; int aml_length; int * aml_start; } ;
union acpi_operand_object {TYPE_7__ common; TYPE_6__ region; TYPE_5__ extra; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {TYPE_4__* scope_info; TYPE_2__* op; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
struct TYPE_10__ {struct acpi_namespace_node* node; } ;
struct TYPE_11__ {TYPE_3__ scope; } ;
struct TYPE_8__ {struct acpi_namespace_node* node; } ;
struct TYPE_9__ {TYPE_1__ common; } ;


 int ACPI_DB_LOAD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_REGION ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_OBJECT_INITIALIZED ;
 int AOPOBJ_REG_CONNECTED ;
 int AOPOBJ_SETUP_COMPLETE ;
 int acpi_is_valid_space_id (int ) ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 scalar_t__ acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_get_region_name (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_create_region ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_create_region(u8 * aml_start,
        u32 aml_length,
        u8 space_id, struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;
 struct acpi_namespace_node *node;
 union acpi_operand_object *region_obj2;

 ACPI_FUNCTION_TRACE(ex_create_region);



 node = walk_state->op->common.node;





 if (acpi_ns_get_attached_object(node)) {
  return_ACPI_STATUS(AE_OK);
 }





 if (!acpi_is_valid_space_id(space_id)) {





  ACPI_ERROR((AE_INFO,
       "Invalid/unknown Address Space ID: 0x%2.2X",
       space_id));
 }

 ACPI_DEBUG_PRINT((ACPI_DB_LOAD, "Region Type - %s (0x%X)\n",
     acpi_ut_get_region_name(space_id), space_id));



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_REGION);
 if (!obj_desc) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }





 region_obj2 = acpi_ns_get_secondary_object(obj_desc);
 region_obj2->extra.aml_start = aml_start;
 region_obj2->extra.aml_length = aml_length;
 region_obj2->extra.method_REG = ((void*)0);
 if (walk_state->scope_info) {
  region_obj2->extra.scope_node =
      walk_state->scope_info->scope.node;
 } else {
  region_obj2->extra.scope_node = node;
 }



 obj_desc->region.space_id = space_id;
 obj_desc->region.address = 0;
 obj_desc->region.length = 0;
 obj_desc->region.node = node;
 obj_desc->region.handler = ((void*)0);
 obj_desc->common.flags &=
     ~(AOPOBJ_SETUP_COMPLETE | AOPOBJ_REG_CONNECTED |
       AOPOBJ_OBJECT_INITIALIZED);



 status = acpi_ns_attach_object(node, obj_desc, ACPI_TYPE_REGION);

cleanup:



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
