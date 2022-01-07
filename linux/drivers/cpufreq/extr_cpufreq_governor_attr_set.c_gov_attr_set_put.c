
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct gov_attr_set {unsigned int usage_count; int update_lock; int kobj; } ;


 int kobject_put (int *) ;
 int list_del (struct list_head*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

unsigned int gov_attr_set_put(struct gov_attr_set *attr_set, struct list_head *list_node)
{
 unsigned int count;

 mutex_lock(&attr_set->update_lock);
 list_del(list_node);
 count = --attr_set->usage_count;
 mutex_unlock(&attr_set->update_lock);
 if (count)
  return count;

 kobject_put(&attr_set->kobj);
 mutex_destroy(&attr_set->update_lock);
 return 0;
}
