
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct acpi_sbs {int batteries_supported; int hc; } ;


 int ACPI_SBS_MANAGER ;
 int SMBUS_READ_WORD ;
 int acpi_smbus_read (int ,int ,int ,int,int *) ;

__attribute__((used)) static int acpi_manager_get_info(struct acpi_sbs *sbs)
{
 int result = 0;
 u16 battery_system_info;

 result = acpi_smbus_read(sbs->hc, SMBUS_READ_WORD, ACPI_SBS_MANAGER,
     0x04, (u8 *)&battery_system_info);
 if (!result)
  sbs->batteries_supported = battery_system_info & 0x000f;
 return result;
}
