
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct acpi_sbs {int charger_present; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;

 struct acpi_sbs* to_acpi_sbs (struct power_supply*) ;

__attribute__((used)) static int sbs_get_ac_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct acpi_sbs *sbs = to_acpi_sbs(psy);
 switch (psp) {
 case 128:
  val->intval = sbs->charger_present;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
