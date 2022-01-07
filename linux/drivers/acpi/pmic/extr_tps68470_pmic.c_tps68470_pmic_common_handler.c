
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tps68470_pmic_table {int dummy; } ;
struct tps68470_pmic_opregion {struct regmap* regmap; int lock; } ;
typedef struct regmap regmap ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int ACPI_READ ;
 int ACPI_WRITE ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int AE_OK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmic_get_reg_bit (int ,struct tps68470_pmic_table const*,unsigned int,int*,int*) ;

__attribute__((used)) static acpi_status tps68470_pmic_common_handler(u32 function,
       acpi_physical_address address,
       u32 bits, u64 *value,
       void *region_context,
       int (*get)(struct regmap *,
           int, int, u64 *),
       int (*update)(struct regmap *,
       int, int, u64),
       const struct tps68470_pmic_table *tbl,
       unsigned int tbl_size)
{
 struct tps68470_pmic_opregion *opregion = region_context;
 struct regmap *regmap = opregion->regmap;
 int reg, ret, bitmask;

 if (bits != 32)
  return AE_BAD_PARAMETER;

 ret = pmic_get_reg_bit(address, tbl, tbl_size, &reg, &bitmask);
 if (ret < 0)
  return AE_BAD_PARAMETER;

 if (function == ACPI_WRITE && *value > bitmask)
  return AE_BAD_PARAMETER;

 mutex_lock(&opregion->lock);

 ret = (function == ACPI_READ) ?
  get(regmap, reg, bitmask, value) :
  update(regmap, reg, bitmask, *value);

 mutex_unlock(&opregion->lock);

 return ret ? AE_ERROR : AE_OK;
}
