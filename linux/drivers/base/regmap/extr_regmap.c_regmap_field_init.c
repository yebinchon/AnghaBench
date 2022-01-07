
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {int id_offset; int id_size; int mask; int shift; int reg; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct reg_field {int id_offset; int id_size; int lsb; int msb; int reg; } ;


 int GENMASK (int ,int ) ;

__attribute__((used)) static void regmap_field_init(struct regmap_field *rm_field,
 struct regmap *regmap, struct reg_field reg_field)
{
 rm_field->regmap = regmap;
 rm_field->reg = reg_field.reg;
 rm_field->shift = reg_field.lsb;
 rm_field->mask = GENMASK(reg_field.msb, reg_field.lsb);
 rm_field->id_size = reg_field.id_size;
 rm_field->id_offset = reg_field.id_offset;
}
