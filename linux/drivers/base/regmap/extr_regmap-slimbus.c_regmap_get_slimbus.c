
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int dummy; } ;
struct regmap_config {int val_bits; int reg_bits; } ;
struct regmap_bus {int dummy; } ;


 int ENOTSUPP ;
 struct regmap_bus const* ERR_PTR (int ) ;
 struct regmap_bus const regmap_slimbus_bus ;

__attribute__((used)) static const struct regmap_bus *regmap_get_slimbus(struct slim_device *slim,
     const struct regmap_config *config)
{
 if (config->val_bits == 8 && config->reg_bits == 16)
  return &regmap_slimbus_bus;

 return ERR_PTR(-ENOTSUPP);
}
