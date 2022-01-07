
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int ARRAY_SIZE (int ) ;
 int clk_table ;
 int ti_tps68470_regmap_update_bits ;
 int tps68470_pmic_common_handler (int ,int ,int ,int *,void*,int ,int ,int ,int ) ;
 int tps68470_pmic_get_clk ;

__attribute__((used)) static acpi_status tps68470_pmic_clk_handler(u32 function,
           acpi_physical_address address, u32 bits,
           u64 *value, void *handler_context,
           void *region_context)
{
 return tps68470_pmic_common_handler(function, address, bits, value,
    region_context,
    tps68470_pmic_get_clk,
    ti_tps68470_regmap_update_bits,
    clk_table,
    ARRAY_SIZE(clk_table));
}
