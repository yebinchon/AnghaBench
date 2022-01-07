
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;
typedef int acpi_gpe_handler ;


 int ACPI_FUNCTION_TRACE (int (*) (int ,int ,int ,int ,void*)) ;
 int FALSE ;
 int acpi_ev_install_gpe_handler (int ,int ,int ,int ,int ,void*) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_install_gpe_handler(acpi_handle gpe_device,
    u32 gpe_number,
    u32 type, acpi_gpe_handler address, void *context)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_install_gpe_handler);

 status = acpi_ev_install_gpe_handler(gpe_device, gpe_number, type,
          FALSE, address, context);

 return_ACPI_STATUS(status);
}
