
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct intel_pmic_opregion {int lpat_table; int regmap; TYPE_1__* data; } ;
struct TYPE_2__ {int (* get_raw_temp ) (int ,int) ;} ;


 int ENXIO ;
 int acpi_lpat_raw_to_temp (int ,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int pmic_read_temp(struct intel_pmic_opregion *opregion,
     int reg, u64 *value)
{
 int raw_temp, temp;

 if (!opregion->data->get_raw_temp)
  return -ENXIO;

 raw_temp = opregion->data->get_raw_temp(opregion->regmap, reg);
 if (raw_temp < 0)
  return raw_temp;

 if (!opregion->lpat_table) {
  *value = raw_temp;
  return 0;
 }

 temp = acpi_lpat_raw_to_temp(opregion->lpat_table, raw_temp);
 if (temp < 0)
  return temp;

 *value = temp;
 return 0;
}
