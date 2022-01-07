
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct gov_attr_set {int usage_count; int policy_list; int update_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (struct list_head*,int *) ;
 int mutex_init (int *) ;

void gov_attr_set_init(struct gov_attr_set *attr_set, struct list_head *list_node)
{
 INIT_LIST_HEAD(&attr_set->policy_list);
 mutex_init(&attr_set->update_lock);
 attr_set->usage_count = 1;
 list_add(list_node, &attr_set->policy_list);
}
