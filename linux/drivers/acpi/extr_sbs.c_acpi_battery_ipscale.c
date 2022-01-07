
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int spec; } ;


 int battery_scale (int) ;

__attribute__((used)) static inline int acpi_battery_ipscale(struct acpi_battery *battery)
{
 return battery_scale((battery->spec & 0xf000) >> 12);
}
