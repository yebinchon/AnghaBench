
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct master {int bound; int dev; TYPE_1__* ops; } ;
struct component {int dev; struct master* master; } ;
struct TYPE_2__ {int (* bind ) (int ) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,...) ;
 int dev_info (int ,char*,int) ;
 int dev_name (int ) ;
 int devres_open_group (int ,int *,int ) ;
 int devres_release_group (int ,int *) ;
 scalar_t__ find_components (struct master*) ;
 int stub1 (int ) ;

__attribute__((used)) static int try_to_bring_up_master(struct master *master,
 struct component *component)
{
 int ret;

 dev_dbg(master->dev, "trying to bring up master\n");

 if (find_components(master)) {
  dev_dbg(master->dev, "master has incomplete components\n");
  return 0;
 }

 if (component && component->master != master) {
  dev_dbg(master->dev, "master is not for this component (%s)\n",
   dev_name(component->dev));
  return 0;
 }

 if (!devres_open_group(master->dev, ((void*)0), GFP_KERNEL))
  return -ENOMEM;


 ret = master->ops->bind(master->dev);
 if (ret < 0) {
  devres_release_group(master->dev, ((void*)0));
  dev_info(master->dev, "master bind failed: %d\n", ret);
  return ret;
 }

 master->bound = 1;
 return 1;
}
