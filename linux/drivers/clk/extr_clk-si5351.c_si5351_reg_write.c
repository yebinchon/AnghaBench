
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline int si5351_reg_write(struct si5351_driver_data *drvdata,
       u8 reg, u8 val)
{
 return regmap_write(drvdata->regmap, reg, val);
}
