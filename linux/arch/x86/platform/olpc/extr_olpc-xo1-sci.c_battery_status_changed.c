
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;


 int power_supply_changed (struct power_supply*) ;
 struct power_supply* power_supply_get_by_name (char*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static void battery_status_changed(void)
{
 struct power_supply *psy = power_supply_get_by_name("olpc-battery");

 if (psy) {
  power_supply_changed(psy);
  power_supply_put(psy);
 }
}
