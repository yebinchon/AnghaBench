
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {union acpi_operand_object* handler; } ;
struct TYPE_7__ {int space_id; TYPE_2__* node; } ;
struct TYPE_5__ {int flags; } ;
union acpi_operand_object {TYPE_4__ common_notify; TYPE_3__ region; TYPE_1__ common; } ;
struct acpi_namespace_node {int type; struct acpi_namespace_node* parent; } ;
typedef int acpi_status ;
typedef int acpi_adr_space_type ;
struct TYPE_6__ {struct acpi_namespace_node* parent; } ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REG_CONNECT ;



 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AOPOBJ_OBJECT_INITIALIZED ;
 int FALSE ;
 int acpi_ev_attach_region (union acpi_operand_object*,union acpi_operand_object*,int ) ;
 int acpi_ev_execute_reg_method (union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ev_find_region_handler (int ,union acpi_operand_object*) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ut_get_region_name (int ) ;
 int ev_initialize_region ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_initialize_region(union acpi_operand_object *region_obj)
{
 union acpi_operand_object *handler_obj;
 union acpi_operand_object *obj_desc;
 acpi_adr_space_type space_id;
 struct acpi_namespace_node *node;

 ACPI_FUNCTION_TRACE(ev_initialize_region);

 if (!region_obj) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (region_obj->common.flags & AOPOBJ_OBJECT_INITIALIZED) {
  return_ACPI_STATUS(AE_OK);
 }

 region_obj->common.flags |= AOPOBJ_OBJECT_INITIALIZED;

 node = region_obj->region.node->parent;
 space_id = region_obj->region.space_id;





 while (node) {



  handler_obj = ((void*)0);
  obj_desc = acpi_ns_get_attached_object(node);
  if (obj_desc) {



   switch (node->type) {
   case 130:
   case 129:
   case 128:

    handler_obj = obj_desc->common_notify.handler;
    break;

   default:



    break;
   }

   handler_obj =
       acpi_ev_find_region_handler(space_id, handler_obj);
   if (handler_obj) {



    ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
        "Found handler %p for region %p in obj %p\n",
        handler_obj, region_obj,
        obj_desc));

    (void)acpi_ev_attach_region(handler_obj,
           region_obj, FALSE);





    acpi_ex_exit_interpreter();
    (void)acpi_ev_execute_reg_method(region_obj,
         ACPI_REG_CONNECT);
    acpi_ex_enter_interpreter();
    return_ACPI_STATUS(AE_OK);
   }
  }



  node = node->parent;
 }






 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "No handler for RegionType %s(%X) (RegionObj %p)\n",
     acpi_ut_get_region_name(space_id), space_id,
     region_obj));

 return_ACPI_STATUS(AE_OK);
}
