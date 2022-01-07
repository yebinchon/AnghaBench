
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct regmap {int dummy; } ;


 int regmap_update_bits (struct regmap*,int,int,int ) ;

__attribute__((used)) static int ti_tps68470_regmap_update_bits(struct regmap *regmap, int reg,
     int bitmask, u64 value)
{
 return regmap_update_bits(regmap, reg, bitmask, value);
}
