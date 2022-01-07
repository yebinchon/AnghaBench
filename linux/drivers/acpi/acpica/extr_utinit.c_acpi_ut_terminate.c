
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ut_delete_address_lists () ;
 int acpi_ut_free_gpe_lists () ;
 int return_VOID ;
 int ut_terminate ;

__attribute__((used)) static void acpi_ut_terminate(void)
{
 ACPI_FUNCTION_TRACE(ut_terminate);

 acpi_ut_free_gpe_lists();
 acpi_ut_delete_address_lists();
 return_VOID;
}
