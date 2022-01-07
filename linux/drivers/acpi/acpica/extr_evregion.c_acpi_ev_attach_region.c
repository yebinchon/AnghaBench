
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {union acpi_operand_object* handler; union acpi_operand_object* next; int space_id; int node; } ;
struct TYPE_3__ {union acpi_operand_object* region_list; } ;
union acpi_operand_object {TYPE_2__ region; TYPE_1__ address_space; } ;
typedef int u8 ;
typedef int acpi_status ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_ALREADY_EXISTS ;
 int AE_OK ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_get_node_name (int ) ;
 int acpi_ut_get_region_name (int ) ;
 int ev_attach_region ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_attach_region(union acpi_operand_object *handler_obj,
        union acpi_operand_object *region_obj,
        u8 acpi_ns_is_locked)
{

 ACPI_FUNCTION_TRACE(ev_attach_region);



 if (region_obj->region.handler) {
  return_ACPI_STATUS(AE_ALREADY_EXISTS);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Adding Region [%4.4s] %p to address handler %p [%s]\n",
     acpi_ut_get_node_name(region_obj->region.node),
     region_obj, handler_obj,
     acpi_ut_get_region_name(region_obj->region.
        space_id)));



 region_obj->region.next = handler_obj->address_space.region_list;
 handler_obj->address_space.region_list = region_obj;
 region_obj->region.handler = handler_obj;
 acpi_ut_add_reference(handler_obj);

 return_ACPI_STATUS(AE_OK);
}
