
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int val_bits; int reg_bits; scalar_t__ pad_bits; } ;


 int ENOTSUPP ;

__attribute__((used)) static int regmap_sdw_config_check(const struct regmap_config *config)
{

 if (config->val_bits != 8)
  return -ENOTSUPP;


 if (config->reg_bits != 32)
  return -ENOTSUPP;

 if (config->pad_bits != 0)
  return -ENOTSUPP;

 return 0;
}
