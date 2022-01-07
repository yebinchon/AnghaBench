
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_wdat {int dummy; } ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_WDAT ;
 scalar_t__ acpi_disabled ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 scalar_t__ acpi_watchdog_uses_rtc (struct acpi_table_wdat const*) ;
 int pr_info (char*) ;

__attribute__((used)) static const struct acpi_table_wdat *acpi_watchdog_get_wdat(void)
{
 const struct acpi_table_wdat *wdat = ((void*)0);
 acpi_status status;

 if (acpi_disabled)
  return ((void*)0);

 status = acpi_get_table(ACPI_SIG_WDAT, 0,
    (struct acpi_table_header **)&wdat);
 if (ACPI_FAILURE(status)) {

  return ((void*)0);
 }

 if (acpi_watchdog_uses_rtc(wdat)) {
  pr_info("Skipping WDAT on this system because it uses RTC SRAM\n");
  return ((void*)0);
 }

 return wdat;
}
