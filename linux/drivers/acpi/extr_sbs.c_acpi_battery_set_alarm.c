
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct acpi_sbs {int hc; scalar_t__ manager_present; } ;
struct acpi_battery {int id; int alarm_capacity; struct acpi_sbs* sbs; } ;


 int ACPI_SBS_BATTERY ;
 int ACPI_SBS_MANAGER ;
 int SMBUS_READ_WORD ;
 int SMBUS_WRITE_WORD ;
 int acpi_smbus_read (int ,int ,int ,int,int *) ;
 int acpi_smbus_write (int ,int ,int ,int,int *,int) ;

__attribute__((used)) static int acpi_battery_set_alarm(struct acpi_battery *battery)
{
 struct acpi_sbs *sbs = battery->sbs;
 u16 value, sel = 1 << (battery->id + 12);

 int ret;


 if (sbs->manager_present) {
  ret = acpi_smbus_read(sbs->hc, SMBUS_READ_WORD, ACPI_SBS_MANAGER,
    0x01, (u8 *)&value);
  if (ret)
   goto end;
  if ((value & 0xf000) != sel) {
   value &= 0x0fff;
   value |= sel;
   ret = acpi_smbus_write(sbs->hc, SMBUS_WRITE_WORD,
      ACPI_SBS_MANAGER,
      0x01, (u8 *)&value, 2);
   if (ret)
    goto end;
  }
 }
 ret = acpi_smbus_write(sbs->hc, SMBUS_WRITE_WORD, ACPI_SBS_BATTERY,
    0x01, (u8 *)&battery->alarm_capacity, 2);
      end:
 return ret;
}
