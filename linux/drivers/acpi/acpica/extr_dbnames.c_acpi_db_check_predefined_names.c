
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_walk_for_predefined_names ;
 int acpi_os_printf (char*,scalar_t__) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,void*,int *) ;

void acpi_db_check_predefined_names(void)
{
 u32 count = 0;



 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX,
      acpi_db_walk_for_predefined_names, ((void*)0),
      (void *)&count, ((void*)0));

 acpi_os_printf("Found %u predefined names in the namespace\n", count);
}
