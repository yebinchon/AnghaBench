
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {void* name; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int dev_get_regmap_match(struct device *dev, void *res, void *data)
{
 struct regmap **r = res;
 if (!r || !*r) {
  WARN_ON(!r || !*r);
  return 0;
 }


 if (data)
  return (*r)->name == data;
 else
  return 1;
}
