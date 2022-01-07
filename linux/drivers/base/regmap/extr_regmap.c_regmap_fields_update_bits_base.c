
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {unsigned int id_size; unsigned int shift; unsigned int mask; unsigned int id_offset; scalar_t__ reg; int regmap; } ;


 int EINVAL ;
 int regmap_update_bits_base (int ,scalar_t__,unsigned int,unsigned int,int*,int,int) ;

int regmap_fields_update_bits_base(struct regmap_field *field, unsigned int id,
       unsigned int mask, unsigned int val,
       bool *change, bool async, bool force)
{
 if (id >= field->id_size)
  return -EINVAL;

 mask = (mask << field->shift) & field->mask;

 return regmap_update_bits_base(field->regmap,
           field->reg + (field->id_offset * id),
           mask, val << field->shift,
           change, async, force);
}
