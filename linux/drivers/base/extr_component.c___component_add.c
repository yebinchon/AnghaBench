
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_ops {int dummy; } ;
struct component {int subcomponent; int node; scalar_t__ master; struct device* dev; struct component_ops const* ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int component_list ;
 int component_mutex ;
 int dev_dbg (struct device*,char*,struct component_ops const*) ;
 int kfree (struct component*) ;
 struct component* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_component (scalar_t__,struct component*) ;
 int try_to_bring_up_masters (struct component*) ;

__attribute__((used)) static int __component_add(struct device *dev, const struct component_ops *ops,
 int subcomponent)
{
 struct component *component;
 int ret;

 component = kzalloc(sizeof(*component), GFP_KERNEL);
 if (!component)
  return -ENOMEM;

 component->ops = ops;
 component->dev = dev;
 component->subcomponent = subcomponent;

 dev_dbg(dev, "adding component (ops %ps)\n", ops);

 mutex_lock(&component_mutex);
 list_add_tail(&component->node, &component_list);

 ret = try_to_bring_up_masters(component);
 if (ret < 0) {
  if (component->master)
   remove_component(component->master, component);
  list_del(&component->node);

  kfree(component);
 }
 mutex_unlock(&component_mutex);

 return ret < 0 ? ret : 0;
}
