
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dev; } ;
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;


 struct regmap* ERR_PTR (int) ;
 struct regmap* __devm_regmap_init (int *,int *,int *,struct regmap_config const*,struct lock_class_key*,char const*) ;
 int regmap_sdw ;
 int regmap_sdw_config_check (struct regmap_config const*) ;

struct regmap *__devm_regmap_init_sdw(struct sdw_slave *sdw,
          const struct regmap_config *config,
          struct lock_class_key *lock_key,
          const char *lock_name)
{
 int ret;

 ret = regmap_sdw_config_check(config);
 if (ret)
  return ERR_PTR(ret);

 return __devm_regmap_init(&sdw->dev, &regmap_sdw,
   &sdw->dev, config, lock_key, lock_name);
}
