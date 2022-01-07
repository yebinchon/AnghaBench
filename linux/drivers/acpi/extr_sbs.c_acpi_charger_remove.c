
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_sbs {scalar_t__ charger; } ;


 int power_supply_unregister (scalar_t__) ;

__attribute__((used)) static void acpi_charger_remove(struct acpi_sbs *sbs)
{
 if (sbs->charger)
  power_supply_unregister(sbs->charger);
}
