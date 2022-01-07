
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct gov_attr_set {int update_lock; int policy_list; int usage_count; } ;


 int list_add (struct list_head*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gov_attr_set_get(struct gov_attr_set *attr_set, struct list_head *list_node)
{
 mutex_lock(&attr_set->update_lock);
 attr_set->usage_count++;
 list_add(list_node, &attr_set->policy_list);
 mutex_unlock(&attr_set->update_lock);
}
