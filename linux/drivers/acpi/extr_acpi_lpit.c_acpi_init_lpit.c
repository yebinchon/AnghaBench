
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ length; } ;
struct acpi_table_lpit {TYPE_1__ header; } ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_LPIT ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 int lpit_process (scalar_t__,scalar_t__) ;

void acpi_init_lpit(void)
{
 acpi_status status;
 struct acpi_table_lpit *lpit;

 status = acpi_get_table(ACPI_SIG_LPIT, 0, (struct acpi_table_header **)&lpit);

 if (ACPI_FAILURE(status))
  return;

 lpit_process((u64)lpit + sizeof(*lpit),
       (u64)lpit + lpit->header.length);
}
