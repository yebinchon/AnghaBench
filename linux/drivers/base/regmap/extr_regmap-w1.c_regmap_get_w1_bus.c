
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int reg_bits; int val_bits; } ;
struct regmap_bus {int dummy; } ;
struct device {int dummy; } ;


 int ENOTSUPP ;
 struct regmap_bus const* ERR_PTR (int ) ;
 struct regmap_bus const regmap_w1_bus_a16_v16 ;
 struct regmap_bus const regmap_w1_bus_a8_v16 ;
 struct regmap_bus const regmap_w1_bus_a8_v8 ;

__attribute__((used)) static const struct regmap_bus *regmap_get_w1_bus(struct device *w1_dev,
     const struct regmap_config *config)
{
 if (config->reg_bits == 8 && config->val_bits == 8)
  return &regmap_w1_bus_a8_v8;

 if (config->reg_bits == 8 && config->val_bits == 16)
  return &regmap_w1_bus_a8_v16;

 if (config->reg_bits == 16 && config->val_bits == 16)
  return &regmap_w1_bus_a16_v16;

 return ERR_PTR(-ENOTSUPP);
}
