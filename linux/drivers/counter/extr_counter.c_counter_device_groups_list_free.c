
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct counter_device_attr_group* const attrs; struct counter_device_attr_group* const name; } ;
struct counter_device_attr_group {int attr_list; TYPE_1__ attr_group; } ;


 int counter_device_attr_list_free (int *) ;
 int kfree (struct counter_device_attr_group* const) ;

__attribute__((used)) static void counter_device_groups_list_free(
 struct counter_device_attr_group *const groups_list,
 const size_t num_groups)
{
 struct counter_device_attr_group *group;
 size_t i;


 for (i = 0; i < num_groups; i++) {
  group = groups_list + i;


  kfree(group->attr_group.name);
  kfree(group->attr_group.attrs);
  counter_device_attr_list_free(&group->attr_list);
 }

 kfree(groups_list);
}
