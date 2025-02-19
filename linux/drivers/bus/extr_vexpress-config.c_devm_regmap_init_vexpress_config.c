
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vexpress_config_bridge {int context; TYPE_1__* ops; } ;
struct regmap {int dummy; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {scalar_t__ class; } ;
struct TYPE_3__ {struct regmap* (* regmap_init ) (struct device*,int ) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct regmap* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 scalar_t__ WARN_ON (int) ;
 struct vexpress_config_bridge* dev_get_drvdata (TYPE_2__*) ;
 int devres_add (struct device*,struct regmap**) ;
 struct regmap** devres_alloc (int ,int,int ) ;
 int devres_free (struct regmap**) ;
 struct regmap* stub1 (struct device*,int ) ;
 scalar_t__ vexpress_config_class ;
 int vexpress_config_devres_release ;

struct regmap *devm_regmap_init_vexpress_config(struct device *dev)
{
 struct vexpress_config_bridge *bridge;
 struct regmap *regmap;
 struct regmap **res;

 if (WARN_ON(dev->parent->class != vexpress_config_class))
  return ERR_PTR(-ENODEV);

 bridge = dev_get_drvdata(dev->parent);
 if (WARN_ON(!bridge))
  return ERR_PTR(-EINVAL);

 res = devres_alloc(vexpress_config_devres_release, sizeof(*res),
   GFP_KERNEL);
 if (!res)
  return ERR_PTR(-ENOMEM);

 regmap = (bridge->ops->regmap_init)(dev, bridge->context);
 if (IS_ERR(regmap)) {
  devres_free(res);
  return regmap;
 }

 *res = regmap;
 devres_add(dev, res);

 return regmap;
}
