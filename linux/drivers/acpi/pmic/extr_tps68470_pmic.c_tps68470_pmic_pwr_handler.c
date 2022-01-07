
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int ACPI_WRITE ;
 int AE_BAD_PARAMETER ;
 int ARRAY_SIZE (int ) ;
 int power_table ;
 int ti_tps68470_regmap_update_bits ;
 int tps68470_pmic_common_handler (int,int ,int,int*,void*,int ,int ,int ,int ) ;
 int tps68470_pmic_get_power ;

__attribute__((used)) static acpi_status tps68470_pmic_pwr_handler(u32 function,
      acpi_physical_address address,
      u32 bits, u64 *value,
      void *handler_context,
      void *region_context)
{
 if (bits != 32)
  return AE_BAD_PARAMETER;


 if (function == ACPI_WRITE &&
     !(*value == 0 || *value == 1 || *value == 3)) {
  return AE_BAD_PARAMETER;
 }

 return tps68470_pmic_common_handler(function, address, bits, value,
    region_context,
    tps68470_pmic_get_power,
    ti_tps68470_regmap_update_bits,
    power_table,
    ARRAY_SIZE(power_table));
}
