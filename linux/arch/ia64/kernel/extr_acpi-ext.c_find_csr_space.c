
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csr_space {scalar_t__ length; int base; } ;
struct TYPE_2__ {scalar_t__ address_length; int minimum; } ;
struct acpi_resource_address64 {scalar_t__ resource_type; scalar_t__ producer_consumer; TYPE_1__ address; } ;
struct acpi_resource {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_CONSUMER ;
 scalar_t__ ACPI_MEMORY_RANGE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int acpi_resource_to_address64 (struct acpi_resource*,struct acpi_resource_address64*) ;

__attribute__((used)) static acpi_status find_csr_space(struct acpi_resource *resource, void *data)
{
 struct csr_space *space = data;
 struct acpi_resource_address64 addr;
 acpi_status status;

 status = acpi_resource_to_address64(resource, &addr);
 if (ACPI_SUCCESS(status) &&
     addr.resource_type == ACPI_MEMORY_RANGE &&
     addr.address.address_length &&
     addr.producer_consumer == ACPI_CONSUMER) {
  space->base = addr.address.minimum;
  space->length = addr.address.address_length;
  return AE_CTRL_TERMINATE;
 }
 return AE_OK;
}
