
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;
struct counter_device_attr_group {int attr_list; TYPE_1__ attr_group; } ;
struct counter_device {size_t num_counts; struct counter_count* counts; } ;
struct counter_count {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_count_attributes_create (struct counter_device_attr_group* const,struct counter_device const* const,struct counter_count*) ;
 int counter_device_attr_list_free (int *) ;
 int counter_synapses_register (struct counter_device_attr_group* const,struct counter_device const* const,struct counter_count*,char const*) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char const*) ;

__attribute__((used)) static int counter_counts_register(
 struct counter_device_attr_group *const groups_list,
 const struct counter_device *const counter)
{
 size_t i;
 struct counter_count *count;
 const char *name;
 int err;


 for (i = 0; i < counter->num_counts; i++) {
  count = counter->counts + i;


  name = kasprintf(GFP_KERNEL, "count%d", count->id);
  if (!name) {
   err = -ENOMEM;
   goto err_free_attr_groups;
  }
  groups_list[i].attr_group.name = name;


  err = counter_synapses_register(groups_list + i, counter, count,
      name);
  if (err)
   goto err_free_attr_groups;


  err = counter_count_attributes_create(groups_list + i, counter,
            count);
  if (err)
   goto err_free_attr_groups;
 }

 return 0;

err_free_attr_groups:
 do {
  kfree(groups_list[i].attr_group.name);
  counter_device_attr_list_free(&groups_list[i].attr_list);
 } while (i--);
 return err;
}
