
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {scalar_t__ pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_COPY_NAMESEG (scalar_t__,char const*) ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int ) ;
 size_t ACPI_NAMESEG_SIZE ;
 int ACPI_PATH_SEGMENT_LENGTH ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 struct acpi_namespace_node* acpi_ns_validate_handle (int ) ;
 char* acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_initialize_buffer (struct acpi_buffer*,int ) ;
 int ns_handle_to_name ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_handle_to_name(acpi_handle target_handle, struct acpi_buffer *buffer)
{
 acpi_status status;
 struct acpi_namespace_node *node;
 const char *node_name;

 ACPI_FUNCTION_TRACE_PTR(ns_handle_to_name, target_handle);

 node = acpi_ns_validate_handle(target_handle);
 if (!node) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status = acpi_ut_initialize_buffer(buffer, ACPI_PATH_SEGMENT_LENGTH);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 node_name = acpi_ut_get_node_name(node);
 ACPI_COPY_NAMESEG(buffer->pointer, node_name);
 ((char *)buffer->pointer)[ACPI_NAMESEG_SIZE] = 0;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "%4.4s\n", (char *)buffer->pointer));
 return_ACPI_STATUS(AE_OK);
}
