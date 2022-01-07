
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battery {int device_chemistry; } ;


 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int POWER_SUPPLY_TECHNOLOGY_LIPO ;
 int POWER_SUPPLY_TECHNOLOGY_NiCd ;
 int POWER_SUPPLY_TECHNOLOGY_NiMH ;
 int POWER_SUPPLY_TECHNOLOGY_UNKNOWN ;
 int strcasecmp (char*,int ) ;

__attribute__((used)) static int acpi_battery_technology(struct acpi_battery *battery)
{
 if (!strcasecmp("NiCd", battery->device_chemistry))
  return POWER_SUPPLY_TECHNOLOGY_NiCd;
 if (!strcasecmp("NiMH", battery->device_chemistry))
  return POWER_SUPPLY_TECHNOLOGY_NiMH;
 if (!strcasecmp("LION", battery->device_chemistry))
  return POWER_SUPPLY_TECHNOLOGY_LION;
 if (!strcasecmp("LiP", battery->device_chemistry))
  return POWER_SUPPLY_TECHNOLOGY_LIPO;
 return POWER_SUPPLY_TECHNOLOGY_UNKNOWN;
}
