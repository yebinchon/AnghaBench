
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {unsigned int shift; unsigned int mask; int reg; int regmap; } ;


 int regmap_update_bits_base (int ,int ,unsigned int,unsigned int,int*,int,int) ;

int regmap_field_update_bits_base(struct regmap_field *field,
      unsigned int mask, unsigned int val,
      bool *change, bool async, bool force)
{
 mask = (mask << field->shift) & field->mask;

 return regmap_update_bits_base(field->regmap, field->reg,
           mask, val << field->shift,
           change, async, force);
}
