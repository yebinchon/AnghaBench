
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct master {TYPE_2__* match; } ;
struct device {int dummy; } ;
struct component {int dummy; } ;
struct TYPE_4__ {size_t num; TYPE_1__* compare; } ;
struct TYPE_3__ {struct component* component; int duplicate; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 struct master* __master_find (struct device*,int *) ;
 int component_bind (struct component*,struct master*,void*) ;
 int component_mutex ;
 int component_unbind (struct component*,struct master*,void*) ;
 int mutex_is_locked (int *) ;

int component_bind_all(struct device *master_dev, void *data)
{
 struct master *master;
 struct component *c;
 size_t i;
 int ret = 0;

 WARN_ON(!mutex_is_locked(&component_mutex));

 master = __master_find(master_dev, ((void*)0));
 if (!master)
  return -EINVAL;


 for (i = 0; i < master->match->num; i++)
  if (!master->match->compare[i].duplicate) {
   c = master->match->compare[i].component;
   ret = component_bind(c, master, data);
   if (ret)
    break;
  }

 if (ret != 0) {
  for (; i > 0; i--)
   if (!master->match->compare[i - 1].duplicate) {
    c = master->match->compare[i - 1].component;
    component_unbind(c, master, data);
   }
 }

 return ret;
}
