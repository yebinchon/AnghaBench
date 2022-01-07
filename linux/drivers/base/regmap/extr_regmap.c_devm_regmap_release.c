
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;


 int regmap_exit (struct regmap*) ;

__attribute__((used)) static void devm_regmap_release(struct device *dev, void *res)
{
 regmap_exit(*(struct regmap **)res);
}
