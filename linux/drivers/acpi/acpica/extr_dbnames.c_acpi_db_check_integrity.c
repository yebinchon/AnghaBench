
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_integrity_info {int objects; int nodes; int member_1; int member_0; } ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_integrity_walk ;
 int acpi_os_printf (char*,int ,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,void*,int *) ;

void acpi_db_check_integrity(void)
{
 struct acpi_integrity_info info = { 0, 0 };



 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, acpi_db_integrity_walk, ((void*)0),
      (void *)&info, ((void*)0));

 acpi_os_printf("Verified %u namespace nodes with %u Objects\n",
         info.nodes, info.objects);
}
