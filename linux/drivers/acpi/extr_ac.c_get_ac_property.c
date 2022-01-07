
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct acpi_ac {int state; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ENODEV ;

 scalar_t__ acpi_ac_get_state (struct acpi_ac*) ;
 struct acpi_ac* to_acpi_ac (struct power_supply*) ;

__attribute__((used)) static int get_ac_property(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct acpi_ac *ac = to_acpi_ac(psy);

 if (!ac)
  return -ENODEV;

 if (acpi_ac_get_state(ac))
  return -ENODEV;

 switch (psp) {
 case 128:
  val->intval = ac->state;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
