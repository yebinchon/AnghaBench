
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int METHOD_NAME__CRS ;
 int acpi_get_resource_memory ;
 int acpi_handle_info (int ,char*,scalar_t__*) ;
 scalar_t__ acpi_has_method (int ,int ) ;
 int acpi_walk_resources (int ,int ,int ,struct resource*) ;
 scalar_t__ spcr_uart_addr ;

__attribute__((used)) static bool acpi_device_should_be_hidden(acpi_handle handle)
{
 acpi_status status;
 struct resource res;


 if (!(spcr_uart_addr && acpi_has_method(handle, METHOD_NAME__CRS)))
  return 0;





 status = acpi_walk_resources(handle, METHOD_NAME__CRS,
         acpi_get_resource_memory, &res);
 if (ACPI_FAILURE(status) || res.start != spcr_uart_addr)
  return 0;

 acpi_handle_info(handle, "The UART device @%pa in SPCR table will be hidden\n",
    &res.start);

 return 1;
}
