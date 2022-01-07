
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int dev; } ;
struct regmap_config {int dummy; } ;
struct regmap_bus {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;


 struct regmap* ERR_CAST (struct regmap_bus const*) ;
 scalar_t__ IS_ERR (struct regmap_bus const*) ;
 struct regmap* __devm_regmap_init (int *,struct regmap_bus const*,struct slim_device**,struct regmap_config const*,struct lock_class_key*,char const*) ;
 struct regmap_bus* regmap_get_slimbus (struct slim_device*,struct regmap_config const*) ;

struct regmap *__devm_regmap_init_slimbus(struct slim_device *slimbus,
       const struct regmap_config *config,
       struct lock_class_key *lock_key,
       const char *lock_name)
{
 const struct regmap_bus *bus = regmap_get_slimbus(slimbus, config);

 if (IS_ERR(bus))
  return ERR_CAST(bus);

 return __devm_regmap_init(&slimbus->dev, bus, &slimbus, config,
      lock_key, lock_name);
}
