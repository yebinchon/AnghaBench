
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int acpi_ev_initialize_region (union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ns_get_attached_object (int ) ;

acpi_status acpi_ds_initialize_region(acpi_handle obj_handle)
{
 union acpi_operand_object *obj_desc;
 acpi_status status;

 obj_desc = acpi_ns_get_attached_object(obj_handle);



 status = acpi_ev_initialize_region(obj_desc);
 return (status);
}
