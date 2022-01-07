
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct counter_signal {int id; } ;
struct TYPE_2__ {char const* name; } ;
struct counter_device_attr_group {int attr_list; TYPE_1__ attr_group; } ;
struct counter_device {size_t num_signals; struct counter_signal* signals; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_device_attr_list_free (int *) ;
 int counter_signal_attributes_create (struct counter_device_attr_group* const,struct counter_device const* const,struct counter_signal*) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char const*) ;

__attribute__((used)) static int counter_signals_register(
 struct counter_device_attr_group *const groups_list,
 const struct counter_device *const counter)
{
 const size_t num_signals = counter->num_signals;
 size_t i;
 struct counter_signal *signal;
 const char *name;
 int err;


 for (i = 0; i < num_signals; i++) {
  signal = counter->signals + i;


  name = kasprintf(GFP_KERNEL, "signal%d", signal->id);
  if (!name) {
   err = -ENOMEM;
   goto err_free_attr_groups;
  }
  groups_list[i].attr_group.name = name;


  err = counter_signal_attributes_create(groups_list + i, counter,
             signal);
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
