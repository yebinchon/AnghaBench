
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; int pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {union acpi_object* pointer; void* length; } ;
typedef int acpi_status ;
typedef int acpi_rsdesc_size ;


 void* ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (union acpi_object*) ;
 int acpi_dm_compare_aml_resources (int ,int ,union acpi_object*,int ) ;
 int acpi_evaluate_object (struct acpi_namespace_node*,char*,int *,struct acpi_buffer*) ;
 int acpi_format_exception (int ) ;
 int acpi_get_current_resources (struct acpi_namespace_node*,struct acpi_buffer*) ;
 int acpi_os_printf (char*,...) ;
 int acpi_rs_create_aml_resources (struct acpi_buffer*,struct acpi_buffer*) ;

__attribute__((used)) static acpi_status
acpi_dm_test_resource_conversion(struct acpi_namespace_node *node, char *name)
{
 acpi_status status;
 struct acpi_buffer return_buffer;
 struct acpi_buffer resource_buffer;
 struct acpi_buffer new_aml;
 union acpi_object *original_aml;

 acpi_os_printf("Resource Conversion Comparison:\n");

 new_aml.length = ACPI_ALLOCATE_LOCAL_BUFFER;
 return_buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;
 resource_buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;



 status = acpi_evaluate_object(node, name, ((void*)0), &return_buffer);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could not obtain %s: %s\n",
          name, acpi_format_exception(status));
  return (status);
 }



 status = acpi_get_current_resources(node, &resource_buffer);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("AcpiGetCurrentResources failed: %s\n",
          acpi_format_exception(status));
  goto exit1;
 }



 status = acpi_rs_create_aml_resources(&resource_buffer, &new_aml);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("AcpiRsCreateAmlResources failed: %s\n",
          acpi_format_exception(status));
  goto exit2;
 }



 original_aml = return_buffer.pointer;

 acpi_dm_compare_aml_resources(original_aml->buffer.pointer,
          (acpi_rsdesc_size)original_aml->buffer.
          length, new_aml.pointer,
          (acpi_rsdesc_size)new_aml.length);



 ACPI_FREE(new_aml.pointer);
exit2:
 ACPI_FREE(resource_buffer.pointer);
exit1:
 ACPI_FREE(return_buffer.pointer);
 return (status);
}
