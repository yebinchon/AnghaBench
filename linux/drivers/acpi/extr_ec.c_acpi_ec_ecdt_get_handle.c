
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_table_ecdt {int id; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_ECDT ;
 int acpi_get_handle (int *,int ,int *) ;
 int acpi_get_table (int ,int,struct acpi_table_header**) ;

__attribute__((used)) static bool acpi_ec_ecdt_get_handle(acpi_handle *phandle)
{
 struct acpi_table_ecdt *ecdt_ptr;
 acpi_status status;
 acpi_handle handle;

 status = acpi_get_table(ACPI_SIG_ECDT, 1,
    (struct acpi_table_header **)&ecdt_ptr);
 if (ACPI_FAILURE(status))
  return 0;

 status = acpi_get_handle(((void*)0), ecdt_ptr->id, &handle);
 if (ACPI_FAILURE(status))
  return 0;

 *phandle = handle;
 return 1;
}
