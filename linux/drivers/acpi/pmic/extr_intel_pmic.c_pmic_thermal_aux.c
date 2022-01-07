
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct intel_pmic_opregion {int regmap; TYPE_1__* data; scalar_t__ lpat_table; } ;
struct TYPE_2__ {int (* update_aux ) (int ,int,int) ;} ;


 scalar_t__ ACPI_READ ;
 int ENXIO ;
 int acpi_lpat_temp_to_raw (scalar_t__,int) ;
 int pmic_read_temp (struct intel_pmic_opregion*,int,int*) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int pmic_thermal_aux(struct intel_pmic_opregion *opregion, int reg,
       u32 function, u64 *value)
{
 int raw_temp;

 if (function == ACPI_READ)
  return pmic_read_temp(opregion, reg, value);

 if (!opregion->data->update_aux)
  return -ENXIO;

 if (opregion->lpat_table) {
  raw_temp = acpi_lpat_temp_to_raw(opregion->lpat_table, *value);
  if (raw_temp < 0)
   return raw_temp;
 } else {
  raw_temp = *value;
 }

 return opregion->data->update_aux(opregion->regmap, reg, raw_temp);
}
