
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct master {int node; struct component_match* match; struct component_master_ops const* ops; struct device* dev; } ;
struct device {int dummy; } ;
struct component_match {int num; } ;
struct component_master_ops {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int component_master_debugfs_add (struct master*) ;
 int component_match_realloc (struct device*,struct component_match*,int ) ;
 int component_mutex ;
 int free_master (struct master*) ;
 struct master* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int masters ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_to_bring_up_master (struct master*,int *) ;

int component_master_add_with_match(struct device *dev,
 const struct component_master_ops *ops,
 struct component_match *match)
{
 struct master *master;
 int ret;


 ret = component_match_realloc(dev, match, match->num);
 if (ret)
  return ret;

 master = kzalloc(sizeof(*master), GFP_KERNEL);
 if (!master)
  return -ENOMEM;

 master->dev = dev;
 master->ops = ops;
 master->match = match;

 component_master_debugfs_add(master);

 mutex_lock(&component_mutex);
 list_add(&master->node, &masters);

 ret = try_to_bring_up_master(master, ((void*)0));

 if (ret < 0)
  free_master(master);

 mutex_unlock(&component_mutex);

 return ret < 0 ? ret : 0;
}
