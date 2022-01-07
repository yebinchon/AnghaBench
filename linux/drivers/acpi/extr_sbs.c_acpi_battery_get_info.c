
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct acpi_battery {TYPE_1__* sbs; } ;
struct TYPE_5__ {int offset; int command; int mode; } ;
struct TYPE_4__ {int hc; } ;


 int ACPI_SBS_BATTERY ;
 int ARRAY_SIZE (TYPE_2__*) ;
 int acpi_smbus_read (int ,int ,int ,int ,int *) ;
 TYPE_2__* info_readers ;

__attribute__((used)) static int acpi_battery_get_info(struct acpi_battery *battery)
{
 int i, result = 0;

 for (i = 0; i < ARRAY_SIZE(info_readers); ++i) {
  result = acpi_smbus_read(battery->sbs->hc,
      info_readers[i].mode,
      ACPI_SBS_BATTERY,
      info_readers[i].command,
      (u8 *) battery +
      info_readers[i].offset);
  if (result)
   break;
 }
 return result;
}
