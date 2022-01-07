
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_db_execute_walk {scalar_t__ count; int max_count; } ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_walk_for_execute ;
 int acpi_os_printf (char*,scalar_t__) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,void*,int *) ;

void acpi_db_evaluate_predefined_names(void)
{
 struct acpi_db_execute_walk info;

 info.count = 0;
 info.max_count = ACPI_UINT32_MAX;



 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, acpi_db_walk_for_execute,
      ((void*)0), (void *)&info, ((void*)0));

 acpi_os_printf("Evaluated %u predefined names in the namespace\n",
         info.count);
}
