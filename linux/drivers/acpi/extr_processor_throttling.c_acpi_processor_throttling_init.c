
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ acpi_processor_update_tsd_coord () ;

void acpi_processor_throttling_init(void)
{
 if (acpi_processor_update_tsd_coord()) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
   "Assume no T-state coordination\n"));
 }

 return;
}
