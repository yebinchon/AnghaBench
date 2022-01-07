
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_wdat {int dummy; } ;



__attribute__((used)) static bool acpi_watchdog_uses_rtc(const struct acpi_table_wdat *wdat)
{
 return 0;
}
