
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_madt {int dummy; } ;
struct acpi_table_header {int dummy; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_MADT ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;

__attribute__((used)) static struct acpi_table_madt *get_madt_table(void)
{
 static struct acpi_table_madt *madt;
 static int read_madt;

 if (!read_madt) {
  if (ACPI_FAILURE(acpi_get_table(ACPI_SIG_MADT, 0,
     (struct acpi_table_header **)&madt)))
   madt = ((void*)0);
  read_madt++;
 }

 return madt;
}
