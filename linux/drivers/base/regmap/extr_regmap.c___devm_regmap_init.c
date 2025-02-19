
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct regmap_bus {int dummy; } ;
struct regmap {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct regmap* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct regmap*) ;
 struct regmap* __regmap_init (struct device*,struct regmap_bus const*,void*,struct regmap_config const*,struct lock_class_key*,char const*) ;
 int devm_regmap_release ;
 int devres_add (struct device*,struct regmap**) ;
 struct regmap** devres_alloc (int ,int,int ) ;
 int devres_free (struct regmap**) ;

struct regmap *__devm_regmap_init(struct device *dev,
      const struct regmap_bus *bus,
      void *bus_context,
      const struct regmap_config *config,
      struct lock_class_key *lock_key,
      const char *lock_name)
{
 struct regmap **ptr, *regmap;

 ptr = devres_alloc(devm_regmap_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 regmap = __regmap_init(dev, bus, bus_context, config,
          lock_key, lock_name);
 if (!IS_ERR(regmap)) {
  *ptr = regmap;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return regmap;
}
