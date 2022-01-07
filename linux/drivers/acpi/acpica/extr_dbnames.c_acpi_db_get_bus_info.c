
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_bus_walk ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,int *,int *) ;

void acpi_db_get_bus_info(void)
{


 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, acpi_db_bus_walk, ((void*)0), ((void*)0),
      ((void*)0));
}
