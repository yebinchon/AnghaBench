
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {size_t type; } ;
struct TYPE_4__ {TYPE_1__ common_serial_bus; } ;
struct acpi_resource {size_t type; TYPE_2__ data; int length; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_IS_DEBUG_ENABLED (int ,int ) ;
 int ACPI_LV_RESOURCES ;
 struct acpi_resource* ACPI_NEXT_RESOURCE (struct acpi_resource*) ;
 size_t ACPI_RESOURCE_TYPE_END_TAG ;
 size_t ACPI_RESOURCE_TYPE_MAX ;
 size_t ACPI_RESOURCE_TYPE_SERIAL_BUS ;
 int _COMPONENT ;
 int * acpi_gbl_dump_resource_dispatch ;
 int * acpi_gbl_dump_serial_bus_dispatch ;
 int acpi_os_printf (char*,...) ;
 int acpi_rs_dump_descriptor (TYPE_2__*,int ) ;

void acpi_rs_dump_resource_list(struct acpi_resource *resource_list)
{
 u32 count = 0;
 u32 type;

 ACPI_FUNCTION_ENTRY();



 if (!ACPI_IS_DEBUG_ENABLED(ACPI_LV_RESOURCES, _COMPONENT)) {
  return;
 }



 do {
  acpi_os_printf("\n[%02X] ", count);
  count++;



  type = resource_list->type;
  if (type > ACPI_RESOURCE_TYPE_MAX) {
   acpi_os_printf
       ("Invalid descriptor type (%X) in resource list\n",
        resource_list->type);
   return;
  }



  if (!resource_list->length) {
   acpi_os_printf
       ("Invalid zero length descriptor in resource list\n");
   return;
  }



  if (type == ACPI_RESOURCE_TYPE_SERIAL_BUS) {
   acpi_rs_dump_descriptor(&resource_list->data,
      acpi_gbl_dump_serial_bus_dispatch
      [resource_list->data.
       common_serial_bus.type]);
  } else {
   acpi_rs_dump_descriptor(&resource_list->data,
      acpi_gbl_dump_resource_dispatch
      [type]);
  }



  resource_list = ACPI_NEXT_RESOURCE(resource_list);



 } while (type != ACPI_RESOURCE_TYPE_END_TAG);
}
