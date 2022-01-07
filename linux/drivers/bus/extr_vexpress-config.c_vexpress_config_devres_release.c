
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vexpress_config_bridge {int context; TYPE_1__* ops; } ;
struct regmap {int dummy; } ;
struct device {int parent; } ;
struct TYPE_2__ {int (* regmap_exit ) (struct regmap*,int ) ;} ;


 struct vexpress_config_bridge* dev_get_drvdata (int ) ;
 int stub1 (struct regmap*,int ) ;

__attribute__((used)) static void vexpress_config_devres_release(struct device *dev, void *res)
{
 struct vexpress_config_bridge *bridge = dev_get_drvdata(dev->parent);
 struct regmap *regmap = res;

 bridge->ops->regmap_exit(regmap, bridge->context);
}
