
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;


 int dev_get_regmap_match ;
 int dev_get_regmap_release ;
 struct regmap** devres_find (struct device*,int ,int ,void*) ;

struct regmap *dev_get_regmap(struct device *dev, const char *name)
{
 struct regmap **r = devres_find(dev, dev_get_regmap_release,
     dev_get_regmap_match, (void *)name);

 if (!r)
  return ((void*)0);
 return *r;
}
