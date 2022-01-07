
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int mode; } ;



__attribute__((used)) static inline int acpi_battery_mode(struct acpi_battery *battery)
{
 return (battery->mode & 0x8000);
}
