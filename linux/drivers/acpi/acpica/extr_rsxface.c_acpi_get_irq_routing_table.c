
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (int ,struct acpi_buffer*)) ;
 int acpi_rs_get_prt_method_data (struct acpi_namespace_node*,struct acpi_buffer*) ;
 int acpi_rs_validate_parameters (int ,struct acpi_buffer*,struct acpi_namespace_node**) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_get_irq_routing_table(acpi_handle device_handle,
      struct acpi_buffer *ret_buffer)
{
 acpi_status status;
 struct acpi_namespace_node *node;

 ACPI_FUNCTION_TRACE(acpi_get_irq_routing_table);



 status = acpi_rs_validate_parameters(device_handle, ret_buffer, &node);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_rs_get_prt_method_data(node, ret_buffer);
 return_ACPI_STATUS(status);
}
