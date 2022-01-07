
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpe_block; } ;
union acpi_operand_object {TYPE_1__ device; } ;
typedef size_t u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_gpe_event_info {int dummy; } ;
typedef scalar_t__ acpi_handle ;


 int ACPI_FUNCTION_ENTRY () ;
 size_t ACPI_MAX_GPE_BLOCKS ;
 struct acpi_gpe_event_info* acpi_ev_low_get_gpe_info (size_t,int ) ;
 int * acpi_gbl_gpe_fadt_blocks ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;

struct acpi_gpe_event_info *acpi_ev_get_gpe_event_info(acpi_handle gpe_device,
             u32 gpe_number)
{
 union acpi_operand_object *obj_desc;
 struct acpi_gpe_event_info *gpe_info;
 u32 i;

 ACPI_FUNCTION_ENTRY();



 if (!gpe_device) {



  for (i = 0; i < ACPI_MAX_GPE_BLOCKS; i++) {
   gpe_info = acpi_ev_low_get_gpe_info(gpe_number,
           acpi_gbl_gpe_fadt_blocks
           [i]);
   if (gpe_info) {
    return (gpe_info);
   }
  }



  return (((void*)0));
 }



 obj_desc =
     acpi_ns_get_attached_object((struct acpi_namespace_node *)
            gpe_device);
 if (!obj_desc || !obj_desc->device.gpe_block) {
  return (((void*)0));
 }

 return (acpi_ev_low_get_gpe_info
  (gpe_number, obj_desc->device.gpe_block));
}
