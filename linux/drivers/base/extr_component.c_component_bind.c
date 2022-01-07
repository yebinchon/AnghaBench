
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct master {int dev; } ;
struct component {int bound; TYPE_1__* ops; int dev; } ;
struct TYPE_4__ {int (* bind ) (int ,int ,void*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int ,TYPE_1__*) ;
 int dev_err (int ,char*,int ,TYPE_1__*,int) ;
 int dev_info (int ,char*,int ,TYPE_1__*) ;
 int dev_name (int ) ;
 int devres_close_group (int ,int *) ;
 int devres_open_group (int ,struct component*,int ) ;
 int devres_release_group (int ,int *) ;
 int devres_remove_group (int ,int *) ;
 int stub1 (int ,int ,void*) ;

__attribute__((used)) static int component_bind(struct component *component, struct master *master,
 void *data)
{
 int ret;






 if (!devres_open_group(master->dev, ((void*)0), GFP_KERNEL))
  return -ENOMEM;






 if (!devres_open_group(component->dev, component, GFP_KERNEL)) {
  devres_release_group(master->dev, ((void*)0));
  return -ENOMEM;
 }

 dev_dbg(master->dev, "binding %s (ops %ps)\n",
  dev_name(component->dev), component->ops);

 ret = component->ops->bind(component->dev, master->dev, data);
 if (!ret) {
  component->bound = 1;







  devres_close_group(component->dev, ((void*)0));
  devres_remove_group(master->dev, ((void*)0));

  dev_info(master->dev, "bound %s (ops %ps)\n",
    dev_name(component->dev), component->ops);
 } else {
  devres_release_group(component->dev, ((void*)0));
  devres_release_group(master->dev, ((void*)0));

  dev_err(master->dev, "failed to bind %s (ops %ps): %d\n",
   dev_name(component->dev), component->ops, ret);
 }

 return ret;
}
