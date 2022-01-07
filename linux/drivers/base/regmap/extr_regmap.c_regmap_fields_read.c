
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {unsigned int id_size; unsigned int id_offset; unsigned int mask; unsigned int shift; scalar_t__ reg; int regmap; } ;


 int EINVAL ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

int regmap_fields_read(struct regmap_field *field, unsigned int id,
         unsigned int *val)
{
 int ret;
 unsigned int reg_val;

 if (id >= field->id_size)
  return -EINVAL;

 ret = regmap_read(field->regmap,
     field->reg + (field->id_offset * id),
     &reg_val);
 if (ret != 0)
  return ret;

 reg_val &= field->mask;
 reg_val >>= field->shift;
 *val = reg_val;

 return ret;
}
