
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct regmap_bus {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct i2c_client {int dev; } ;


 struct regmap* ERR_CAST (struct regmap_bus const*) ;
 scalar_t__ IS_ERR (struct regmap_bus const*) ;
 struct regmap* __regmap_init (int *,struct regmap_bus const*,int *,struct regmap_config const*,struct lock_class_key*,char const*) ;
 struct regmap_bus* regmap_get_i2c_bus (struct i2c_client*,struct regmap_config const*) ;

struct regmap *__regmap_init_i2c(struct i2c_client *i2c,
     const struct regmap_config *config,
     struct lock_class_key *lock_key,
     const char *lock_name)
{
 const struct regmap_bus *bus = regmap_get_i2c_bus(i2c, config);

 if (IS_ERR(bus))
  return ERR_CAST(bus);

 return __regmap_init(&i2c->dev, bus, &i2c->dev, config,
        lock_key, lock_name);
}
