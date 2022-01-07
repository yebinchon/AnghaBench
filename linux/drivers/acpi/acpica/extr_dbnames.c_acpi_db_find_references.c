
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef int acpi_size ;


 int ACPI_ROOT_OBJECT ;
 union acpi_operand_object* ACPI_TO_POINTER (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_walk_for_references ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,void*,int *) ;
 int strtoul (char*,int *,int) ;

void acpi_db_find_references(char *object_arg)
{
 union acpi_operand_object *obj_desc;
 acpi_size address;



 address = strtoul(object_arg, ((void*)0), 16);
 obj_desc = ACPI_TO_POINTER(address);



 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, acpi_db_walk_for_references,
      ((void*)0), (void *)obj_desc, ((void*)0));
}
