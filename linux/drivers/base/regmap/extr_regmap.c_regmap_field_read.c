
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {unsigned int mask; unsigned int shift; int reg; int regmap; } ;


 int regmap_read (int ,int ,unsigned int*) ;

int regmap_field_read(struct regmap_field *field, unsigned int *val)
{
 int ret;
 unsigned int reg_val;
 ret = regmap_read(field->regmap, field->reg, &reg_val);
 if (ret != 0)
  return ret;

 reg_val &= field->mask;
 reg_val >>= field->shift;
 *val = reg_val;

 return ret;
}
