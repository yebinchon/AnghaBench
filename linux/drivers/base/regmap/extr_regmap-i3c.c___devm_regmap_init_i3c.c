
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct i3c_device {int dev; } ;


 struct regmap* __devm_regmap_init (int *,int *,int *,struct regmap_config const*,struct lock_class_key*,char const*) ;
 int regmap_i3c ;

struct regmap *__devm_regmap_init_i3c(struct i3c_device *i3c,
          const struct regmap_config *config,
          struct lock_class_key *lock_key,
          const char *lock_name)
{
 return __devm_regmap_init(&i3c->dev, &regmap_i3c, &i3c->dev, config,
      lock_key, lock_name);
}
