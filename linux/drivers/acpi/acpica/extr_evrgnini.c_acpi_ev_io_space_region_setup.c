
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_REGION_DEACTIVATE ;
 int AE_OK ;
 int ev_io_space_region_setup ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_io_space_region_setup(acpi_handle handle,
         u32 function,
         void *handler_context, void **region_context)
{
 ACPI_FUNCTION_TRACE(ev_io_space_region_setup);

 if (function == ACPI_REGION_DEACTIVATE) {
  *region_context = ((void*)0);
 } else {
  *region_context = handler_context;
 }

 return_ACPI_STATUS(AE_OK);
}
