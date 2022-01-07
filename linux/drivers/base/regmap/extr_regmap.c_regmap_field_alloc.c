
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;


 int ENOMEM ;
 struct regmap_field* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct regmap_field* kzalloc (int,int ) ;
 int regmap_field_init (struct regmap_field*,struct regmap*,struct reg_field) ;

struct regmap_field *regmap_field_alloc(struct regmap *regmap,
  struct reg_field reg_field)
{
 struct regmap_field *rm_field = kzalloc(sizeof(*rm_field), GFP_KERNEL);

 if (!rm_field)
  return ERR_PTR(-ENOMEM);

 regmap_field_init(rm_field, regmap, reg_field);

 return rm_field;
}
