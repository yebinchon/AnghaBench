
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int resource_type; int specific_flags; } ;
union aml_resource {TYPE_4__ address; } ;
typedef int u8 ;
struct TYPE_5__ {int type_specific; } ;
struct TYPE_6__ {scalar_t__ resource_type; TYPE_1__ info; } ;
struct TYPE_7__ {TYPE_2__ address; } ;
struct acpi_resource {TYPE_3__ data; } ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_IO_RANGE ;
 scalar_t__ ACPI_MEMORY_RANGE ;
 int FALSE ;
 int TRUE ;
 int acpi_rs_convert_aml_to_resource (struct acpi_resource*,union aml_resource*,int ) ;
 int acpi_rs_convert_general_flags ;
 int acpi_rs_convert_io_flags ;
 int acpi_rs_convert_mem_flags ;

u8
acpi_rs_get_address_common(struct acpi_resource *resource,
      union aml_resource *aml)
{
 ACPI_FUNCTION_ENTRY();



 if ((aml->address.resource_type > 2) &&
     (aml->address.resource_type < 0xC0)) {
  return (FALSE);
 }



 (void)acpi_rs_convert_aml_to_resource(resource, aml,
           acpi_rs_convert_general_flags);



 if (resource->data.address.resource_type == ACPI_MEMORY_RANGE) {
  (void)acpi_rs_convert_aml_to_resource(resource, aml,
            acpi_rs_convert_mem_flags);
 } else if (resource->data.address.resource_type == ACPI_IO_RANGE) {
  (void)acpi_rs_convert_aml_to_resource(resource, aml,
            acpi_rs_convert_io_flags);
 } else {


  resource->data.address.info.type_specific =
      aml->address.specific_flags;
 }

 return (TRUE);
}
