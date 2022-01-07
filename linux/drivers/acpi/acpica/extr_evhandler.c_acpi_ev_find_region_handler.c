
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ space_id; union acpi_operand_object* next; } ;
union acpi_operand_object {TYPE_1__ address_space; } ;
typedef scalar_t__ acpi_adr_space_type ;



union acpi_operand_object *acpi_ev_find_region_handler(acpi_adr_space_type
             space_id,
             union acpi_operand_object
             *handler_obj)
{



 while (handler_obj) {



  if (handler_obj->address_space.space_id == space_id) {
   return (handler_obj);
  }



  handler_obj = handler_obj->address_space.next;
 }

 return (((void*)0));
}
