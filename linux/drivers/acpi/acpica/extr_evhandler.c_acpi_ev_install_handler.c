
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ space_id; } ;
struct TYPE_7__ {scalar_t__ space_id; } ;
struct TYPE_6__ {int handler; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_4__ address_space; TYPE_3__ region; TYPE_2__ common_notify; TYPE_1__ common; } ;
typedef int u32 ;
struct acpi_namespace_node {scalar_t__ type; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_REGION ;
 int AE_BAD_PARAMETER ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;
 int FALSE ;
 int acpi_ev_attach_region (union acpi_operand_object*,union acpi_operand_object*,int ) ;
 int acpi_ev_detach_region (union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ev_find_region_handler (scalar_t__,int ) ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 struct acpi_namespace_node* acpi_ns_validate_handle (int ) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int ev_install_handler ;

__attribute__((used)) static acpi_status
acpi_ev_install_handler(acpi_handle obj_handle,
   u32 level, void *context, void **return_value)
{
 union acpi_operand_object *handler_obj;
 union acpi_operand_object *next_handler_obj;
 union acpi_operand_object *obj_desc;
 struct acpi_namespace_node *node;
 acpi_status status;

 ACPI_FUNCTION_NAME(ev_install_handler);

 handler_obj = (union acpi_operand_object *)context;



 if (!handler_obj) {
  return (AE_OK);
 }



 node = acpi_ns_validate_handle(obj_handle);
 if (!node) {
  return (AE_BAD_PARAMETER);
 }





 if ((node->type != ACPI_TYPE_DEVICE) &&
     (node->type != ACPI_TYPE_REGION) && (node != acpi_gbl_root_node)) {
  return (AE_OK);
 }



 obj_desc = acpi_ns_get_attached_object(node);
 if (!obj_desc) {



  return (AE_OK);
 }



 if (obj_desc->common.type == ACPI_TYPE_DEVICE) {



  next_handler_obj =
      acpi_ev_find_region_handler(handler_obj->address_space.
      space_id,
      obj_desc->common_notify.
      handler);
  if (next_handler_obj) {



   ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
       "Found handler for region [%s] in device %p(%p) handler %p\n",
       acpi_ut_get_region_name(handler_obj->
          address_space.
          space_id),
       obj_desc, next_handler_obj,
       handler_obj));
   return (AE_CTRL_DEPTH);
  }





  return (AE_OK);
 }



 if (obj_desc->region.space_id != handler_obj->address_space.space_id) {



  return (AE_OK);
 }






 acpi_ev_detach_region(obj_desc, FALSE);



 status = acpi_ev_attach_region(handler_obj, obj_desc, FALSE);
 return (status);
}
