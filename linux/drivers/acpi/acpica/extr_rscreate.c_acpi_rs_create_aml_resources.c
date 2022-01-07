
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_buffer {scalar_t__ length; int pointer; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int acpi_format_exception (int ) ;
 int acpi_rs_convert_resources_to_aml (int ,scalar_t__,int ) ;
 int acpi_rs_get_aml_length (int ,scalar_t__,scalar_t__*) ;
 int acpi_ut_initialize_buffer (struct acpi_buffer*,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;
 int rs_create_aml_resources ;

acpi_status
acpi_rs_create_aml_resources(struct acpi_buffer *resource_list,
        struct acpi_buffer *output_buffer)
{
 acpi_status status;
 acpi_size aml_size_needed = 0;

 ACPI_FUNCTION_TRACE(rs_create_aml_resources);



 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "ResourceList Buffer = %p\n",
     resource_list->pointer));



 status =
     acpi_rs_get_aml_length(resource_list->pointer,
       resource_list->length, &aml_size_needed);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "AmlSizeNeeded=%X, %s\n",
     (u32)aml_size_needed, acpi_format_exception(status)));
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_ut_initialize_buffer(output_buffer, aml_size_needed);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_rs_convert_resources_to_aml(resource_list->pointer,
        aml_size_needed,
        output_buffer->pointer);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "OutputBuffer %p Length %X\n",
     output_buffer->pointer, (u32) output_buffer->length));
 return_ACPI_STATUS(AE_OK);
}
