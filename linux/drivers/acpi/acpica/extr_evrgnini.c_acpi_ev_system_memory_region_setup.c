
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int address; int length; } ;
union acpi_operand_object {TYPE_1__ region; } ;
typedef scalar_t__ u32 ;
struct acpi_mem_space_context {int address; int length; scalar_t__ mapped_length; int mapped_logical_address; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 struct acpi_mem_space_context* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (struct acpi_mem_space_context*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_REGION_DEACTIVATE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_os_unmap_memory (int ,scalar_t__) ;
 int ev_system_memory_region_setup ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_system_memory_region_setup(acpi_handle handle,
       u32 function,
       void *handler_context, void **region_context)
{
 union acpi_operand_object *region_desc =
     (union acpi_operand_object *)handle;
 struct acpi_mem_space_context *local_region_context;

 ACPI_FUNCTION_TRACE(ev_system_memory_region_setup);

 if (function == ACPI_REGION_DEACTIVATE) {
  if (*region_context) {
   local_region_context =
       (struct acpi_mem_space_context *)*region_context;



   if (local_region_context->mapped_length) {
    acpi_os_unmap_memory(local_region_context->
           mapped_logical_address,
           local_region_context->
           mapped_length);
   }
   ACPI_FREE(local_region_context);
   *region_context = ((void*)0);
  }
  return_ACPI_STATUS(AE_OK);
 }



 local_region_context =
     ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_mem_space_context));
 if (!(local_region_context)) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 local_region_context->length = region_desc->region.length;
 local_region_context->address = region_desc->region.address;

 *region_context = local_region_context;
 return_ACPI_STATUS(AE_OK);
}
