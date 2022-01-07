
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resource_type; } ;
union acpi_resource_data {TYPE_1__ address; } ;
typedef int u8 ;



 int ACPI_FUNCTION_ENTRY () ;


 int acpi_rs_dump_descriptor (union acpi_resource_data*,int ) ;
 int acpi_rs_dump_general_flags ;
 int acpi_rs_dump_io_flags ;
 int acpi_rs_dump_memory_flags ;
 int acpi_rs_out_integer8 (char*,int ) ;
 int acpi_rs_out_string (char*,char*) ;

__attribute__((used)) static void acpi_rs_dump_address_common(union acpi_resource_data *resource)
{
 ACPI_FUNCTION_ENTRY();



 switch (resource->address.resource_type) {
 case 128:

  acpi_rs_dump_descriptor(resource, acpi_rs_dump_memory_flags);
  break;

 case 129:

  acpi_rs_dump_descriptor(resource, acpi_rs_dump_io_flags);
  break;

 case 130:

  acpi_rs_out_string("Resource Type", "Bus Number Range");
  break;

 default:

  acpi_rs_out_integer8("Resource Type",
         (u8) resource->address.resource_type);
  break;
 }



 acpi_rs_dump_descriptor(resource, acpi_rs_dump_general_flags);
}
