
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {int regmap; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static inline int si5351_set_bits(struct si5351_driver_data *drvdata,
      u8 reg, u8 mask, u8 val)
{
 return regmap_update_bits(drvdata->regmap, reg, mask, val);
}
