
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tps68470_pmic_table {int reg; int bitmask; } ;


 int EINVAL ;
 int ENOENT ;

__attribute__((used)) static int pmic_get_reg_bit(u64 address,
       const struct tps68470_pmic_table *table,
       const unsigned int table_size, int *reg,
       int *bitmask)
{
 u64 i;

 i = address / 4;
 if (i >= table_size)
  return -ENOENT;

 if (!reg || !bitmask)
  return -EINVAL;

 *reg = table[i].reg;
 *bitmask = table[i].bitmask;

 return 0;
}
