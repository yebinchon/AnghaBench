
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct master {int dummy; } ;
struct device {int dummy; } ;
struct component_master_ops {int dummy; } ;


 struct master* __master_find (struct device*,struct component_master_ops const*) ;
 int component_mutex ;
 int free_master (struct master*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int take_down_master (struct master*) ;

void component_master_del(struct device *dev,
 const struct component_master_ops *ops)
{
 struct master *master;

 mutex_lock(&component_mutex);
 master = __master_find(dev, ops);
 if (master) {
  take_down_master(master);
  free_master(master);
 }
 mutex_unlock(&component_mutex);
}
