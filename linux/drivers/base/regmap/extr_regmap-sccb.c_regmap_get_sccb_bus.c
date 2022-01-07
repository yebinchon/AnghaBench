
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int val_bits; int reg_bits; } ;
struct regmap_bus {int dummy; } ;
struct i2c_client {int adapter; } ;


 int ENOTSUPP ;
 struct regmap_bus const* ERR_PTR (int ) ;
 struct regmap_bus const regmap_sccb_bus ;
 scalar_t__ sccb_is_available (int ) ;

__attribute__((used)) static const struct regmap_bus *regmap_get_sccb_bus(struct i2c_client *i2c,
     const struct regmap_config *config)
{
 if (config->val_bits == 8 && config->reg_bits == 8 &&
   sccb_is_available(i2c->adapter))
  return &regmap_sccb_bus;

 return ERR_PTR(-ENOTSUPP);
}
