
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gtdt_watchdog {int timer_flags; } ;
struct acpi_gtdt_header {scalar_t__ type; } ;


 scalar_t__ ACPI_GTDT_TYPE_WATCHDOG ;
 int ACPI_GTDT_WATCHDOG_SECURE ;

__attribute__((used)) static inline bool is_non_secure_watchdog(void *platform_timer)
{
 struct acpi_gtdt_header *gh = platform_timer;
 struct acpi_gtdt_watchdog *wd = platform_timer;

 if (gh->type != ACPI_GTDT_TYPE_WATCHDOG)
  return 0;

 return !(wd->timer_flags & ACPI_GTDT_WATCHDOG_SECURE);
}
