
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {union acpi_operand_object* handler; } ;
struct TYPE_5__ {scalar_t__ handler; union acpi_operand_object* next; int * setup; void* context; struct acpi_namespace_node* node; int * region_list; void* handler_flags; void* space_id; } ;
struct TYPE_4__ {void* type; } ;
union acpi_operand_object {TYPE_3__ common_notify; TYPE_2__ address_space; TYPE_1__ common; } ;
typedef void* u8 ;
struct acpi_namespace_node {scalar_t__ type; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;
typedef int acpi_adr_space_type ;
typedef int * acpi_adr_space_setup ;
typedef scalar_t__ acpi_adr_space_handler ;


 void* ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;






 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DEFAULT_HANDLER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_UNLOCK ;
 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_LOCAL_ADDRESS_HANDLER ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 scalar_t__ ACPI_TYPE_THERMAL ;
 int ACPI_UINT32_MAX ;
 int AE_ALREADY_EXISTS ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SAME_HANDLER ;
 int * acpi_ev_cmos_region_setup ;
 int * acpi_ev_default_region_setup ;
 union acpi_operand_object* acpi_ev_find_region_handler (int,union acpi_operand_object*) ;
 int acpi_ev_install_handler ;
 int * acpi_ev_io_space_region_setup ;
 int * acpi_ev_pci_bar_region_setup ;
 int * acpi_ev_pci_config_region_setup ;
 int * acpi_ev_system_memory_region_setup ;
 scalar_t__ acpi_ex_cmos_space_handler ;
 scalar_t__ acpi_ex_data_table_space_handler ;
 scalar_t__ acpi_ex_pci_bar_space_handler ;
 scalar_t__ acpi_ex_pci_config_space_handler ;
 scalar_t__ acpi_ex_system_io_space_handler ;
 scalar_t__ acpi_ex_system_memory_space_handler ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,scalar_t__) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ns_walk_namespace (scalar_t__,struct acpi_namespace_node*,int ,int ,int ,int *,union acpi_operand_object*,int *) ;
 union acpi_operand_object* acpi_ut_create_internal_object (scalar_t__) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_get_region_name (int) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ev_install_space_handler ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_install_space_handler(struct acpi_namespace_node *node,
         acpi_adr_space_type space_id,
         acpi_adr_space_handler handler,
         acpi_adr_space_setup setup, void *context)
{
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *handler_obj;
 acpi_status status = AE_OK;
 acpi_object_type type;
 u8 flags = 0;

 ACPI_FUNCTION_TRACE(ev_install_space_handler);





 if ((node->type != ACPI_TYPE_DEVICE) &&
     (node->type != ACPI_TYPE_PROCESSOR) &&
     (node->type != ACPI_TYPE_THERMAL) && (node != acpi_gbl_root_node)) {
  status = AE_BAD_PARAMETER;
  goto unlock_and_exit;
 }

 if (handler == ACPI_DEFAULT_HANDLER) {
  flags = ACPI_ADDR_HANDLER_DEFAULT_INSTALLED;

  switch (space_id) {
  case 128:

   handler = acpi_ex_system_memory_space_handler;
   setup = acpi_ev_system_memory_region_setup;
   break;

  case 129:

   handler = acpi_ex_system_io_space_handler;
   setup = acpi_ev_io_space_region_setup;
   break;







  case 133:

   handler = acpi_ex_cmos_space_handler;
   setup = acpi_ev_cmos_region_setup;
   break;







  case 132:

   handler = acpi_ex_data_table_space_handler;
   setup = ((void*)0);
   break;

  default:

   status = AE_BAD_PARAMETER;
   goto unlock_and_exit;
  }
 }



 if (!setup) {
  setup = acpi_ev_default_region_setup;
 }



 obj_desc = acpi_ns_get_attached_object(node);
 if (obj_desc) {




  handler_obj = acpi_ev_find_region_handler(space_id,
         obj_desc->
         common_notify.
         handler);

  if (handler_obj) {
   if (handler_obj->address_space.handler == handler) {





    status = AE_SAME_HANDLER;
    goto unlock_and_exit;
   } else {


    status = AE_ALREADY_EXISTS;
   }

   goto unlock_and_exit;
  }
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
      "Creating object on Device %p while installing handler\n",
      node));



  if (node->type == ACPI_TYPE_ANY) {
   type = ACPI_TYPE_DEVICE;
  } else {
   type = node->type;
  }

  obj_desc = acpi_ut_create_internal_object(type);
  if (!obj_desc) {
   status = AE_NO_MEMORY;
   goto unlock_and_exit;
  }



  obj_desc->common.type = (u8)type;



  status = acpi_ns_attach_object(node, obj_desc, type);



  acpi_ut_remove_reference(obj_desc);

  if (ACPI_FAILURE(status)) {
   goto unlock_and_exit;
  }
 }

 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Installing address handler for region %s(%X) "
     "on Device %4.4s %p(%p)\n",
     acpi_ut_get_region_name(space_id), space_id,
     acpi_ut_get_node_name(node), node, obj_desc));







 handler_obj =
     acpi_ut_create_internal_object(ACPI_TYPE_LOCAL_ADDRESS_HANDLER);
 if (!handler_obj) {
  status = AE_NO_MEMORY;
  goto unlock_and_exit;
 }



 handler_obj->address_space.space_id = (u8)space_id;
 handler_obj->address_space.handler_flags = flags;
 handler_obj->address_space.region_list = ((void*)0);
 handler_obj->address_space.node = node;
 handler_obj->address_space.handler = handler;
 handler_obj->address_space.context = context;
 handler_obj->address_space.setup = setup;



 handler_obj->address_space.next = obj_desc->common_notify.handler;





 obj_desc->common_notify.handler = handler_obj;
 status = acpi_ns_walk_namespace(ACPI_TYPE_ANY, node,
     ACPI_UINT32_MAX, ACPI_NS_WALK_UNLOCK,
     acpi_ev_install_handler, ((void*)0),
     handler_obj, ((void*)0));

unlock_and_exit:
 return_ACPI_STATUS(status);
}
