
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ space_id; int handler_flags; union acpi_operand_object* next; } ;
struct TYPE_3__ {union acpi_operand_object* handler; } ;
union acpi_operand_object {TYPE_2__ address_space; TYPE_1__ common_notify; } ;
typedef int u8 ;
struct acpi_namespace_node {int dummy; } ;
typedef scalar_t__ acpi_adr_space_type ;


 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;
 int FALSE ;
 int TRUE ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;

u8
acpi_ev_has_default_handler(struct acpi_namespace_node *node,
       acpi_adr_space_type space_id)
{
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *handler_obj;



 obj_desc = acpi_ns_get_attached_object(node);
 if (obj_desc) {
  handler_obj = obj_desc->common_notify.handler;



  while (handler_obj) {
   if (handler_obj->address_space.space_id == space_id) {
    if (handler_obj->address_space.handler_flags &
        ACPI_ADDR_HANDLER_DEFAULT_INSTALLED) {
     return (TRUE);
    }
   }

   handler_obj = handler_obj->address_space.next;
  }
 }

 return (FALSE);
}
