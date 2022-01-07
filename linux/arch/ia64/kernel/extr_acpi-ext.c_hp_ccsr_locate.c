
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct acpi_resource_vendor_typed {int byte_length; scalar_t__ byte_data; } ;
struct TYPE_2__ {struct acpi_resource_vendor_typed vendor_typed; } ;
struct acpi_resource {TYPE_1__ data; } ;
struct acpi_buffer {struct acpi_resource* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_NOT_FOUND ;
 int METHOD_NAME__CRS ;
 int acpi_get_vendor_resource (int ,int ,int *,struct acpi_buffer*) ;
 int hp_ccsr_uuid ;
 int kfree (struct acpi_resource*) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static acpi_status hp_ccsr_locate(acpi_handle obj, u64 *base, u64 *length)
{
 acpi_status status;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 struct acpi_resource *resource;
 struct acpi_resource_vendor_typed *vendor;

 status = acpi_get_vendor_resource(obj, METHOD_NAME__CRS, &hp_ccsr_uuid,
  &buffer);

 resource = buffer.pointer;
 vendor = &resource->data.vendor_typed;

 if (ACPI_FAILURE(status) || vendor->byte_length < 16) {
  status = AE_NOT_FOUND;
  goto exit;
 }

 memcpy(base, vendor->byte_data, sizeof(*base));
 memcpy(length, vendor->byte_data + 8, sizeof(*length));

  exit:
 kfree(buffer.pointer);
 return status;
}
