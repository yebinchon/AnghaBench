
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct counter_device_attr_group {int attr_list; } ;
struct counter_device {int num_signals; int num_counts; TYPE_1__* device_state; } ;
struct TYPE_2__ {size_t num_groups; struct counter_device_attr_group* groups_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int counter_counts_register (struct counter_device_attr_group*,struct counter_device* const) ;
 int counter_device_groups_list_free (struct counter_device_attr_group*,size_t) ;
 int counter_global_attr_register (struct counter_device_attr_group*,struct counter_device* const) ;
 int counter_signals_register (struct counter_device_attr_group*,struct counter_device* const) ;
 struct counter_device_attr_group* kcalloc (size_t const,int,int ) ;

__attribute__((used)) static int counter_device_groups_list_prepare(
 struct counter_device *const counter)
{
 const size_t total_num_groups =
  counter->num_signals + counter->num_counts + 1;
 struct counter_device_attr_group *groups_list;
 size_t i;
 int err;
 size_t num_groups = 0;


 groups_list = kcalloc(total_num_groups, sizeof(*groups_list),
         GFP_KERNEL);
 if (!groups_list)
  return -ENOMEM;


 for (i = 0; i < total_num_groups; i++)
  INIT_LIST_HEAD(&groups_list[i].attr_list);


 err = counter_signals_register(groups_list, counter);
 if (err)
  goto err_free_groups_list;
 num_groups += counter->num_signals;


 err = counter_counts_register(groups_list + num_groups, counter);
 if (err)
  goto err_free_groups_list;
 num_groups += counter->num_counts;


 err = counter_global_attr_register(groups_list + num_groups, counter);
 if (err)
  goto err_free_groups_list;
 num_groups++;


 counter->device_state->groups_list = groups_list;
 counter->device_state->num_groups = num_groups;

 return 0;

err_free_groups_list:
 counter_device_groups_list_free(groups_list, num_groups);
 return err;
}
