
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {union acpi_operand_object** notify_list; } ;
union acpi_operand_object {TYPE_1__ common_notify; } ;
struct TYPE_7__ {size_t handler_list_id; TYPE_4__* global; union acpi_operand_object* handler_list_head; scalar_t__ value; struct acpi_namespace_node* node; } ;
struct TYPE_6__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_3__ notify; TYPE_2__ common; } ;
typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;
struct TYPE_8__ {int handler; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_STATE_NOTIFY ;
 size_t ACPI_DEVICE_HANDLER_LIST ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_MAX_SYS_NOTIFY ;
 size_t ACPI_SYSTEM_HANDLER_LIST ;
 int ACPI_TYPE_ANY ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_ev_is_notify_object (struct acpi_namespace_node*) ;
 int acpi_ev_notify_dispatch ;
 TYPE_4__* acpi_gbl_global_notify ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_os_execute (int ,int ,union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_get_notify_name (scalar_t__,int ) ;
 int acpi_ut_get_type_name (int ) ;
 int ev_queue_notify_request ;

acpi_status
acpi_ev_queue_notify_request(struct acpi_namespace_node *node, u32 notify_value)
{
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *handler_list_head = ((void*)0);
 union acpi_generic_state *info;
 u8 handler_list_id = 0;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_NAME(ev_queue_notify_request);



 if (!acpi_ev_is_notify_object(node)) {
  return (AE_TYPE);
 }



 if (notify_value <= ACPI_MAX_SYS_NOTIFY) {
  handler_list_id = ACPI_SYSTEM_HANDLER_LIST;
 } else {
  handler_list_id = ACPI_DEVICE_HANDLER_LIST;
 }



 obj_desc = acpi_ns_get_attached_object(node);
 if (obj_desc) {



  handler_list_head =
      obj_desc->common_notify.notify_list[handler_list_id];
 }





 if (!acpi_gbl_global_notify[handler_list_id].handler
     && !handler_list_head) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "No notify handler for Notify, ignoring (%4.4s, %X) node %p\n",
      acpi_ut_get_node_name(node), notify_value,
      node));

  return (AE_OK);
 }



 info = acpi_ut_create_generic_state();
 if (!info) {
  return (AE_NO_MEMORY);
 }

 info->common.descriptor_type = ACPI_DESC_TYPE_STATE_NOTIFY;

 info->notify.node = node;
 info->notify.value = (u16)notify_value;
 info->notify.handler_list_id = handler_list_id;
 info->notify.handler_list_head = handler_list_head;
 info->notify.global = &acpi_gbl_global_notify[handler_list_id];

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Dispatching Notify on [%4.4s] (%s) Value 0x%2.2X (%s) Node %p\n",
     acpi_ut_get_node_name(node),
     acpi_ut_get_type_name(node->type), notify_value,
     acpi_ut_get_notify_name(notify_value, ACPI_TYPE_ANY),
     node));

 status = acpi_os_execute(OSL_NOTIFY_HANDLER,
     acpi_ev_notify_dispatch, info);
 if (ACPI_FAILURE(status)) {
  acpi_ut_delete_generic_state(info);
 }

 return (status);
}
