
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device_attr_group {int attr_list; } ;
struct counter_device {int num_signals; int num_counts; int name; } ;


 int counter_device_attr_list_free (int *) ;
 int counter_device_ext_register (struct counter_device_attr_group* const,struct counter_device* const) ;
 int counter_name_attribute_create (struct counter_device_attr_group* const,int ) ;
 int counter_size_attribute_create (struct counter_device_attr_group* const,int ,char*) ;

__attribute__((used)) static int counter_global_attr_register(
 struct counter_device_attr_group *const group,
 struct counter_device *const counter)
{
 int err;


 err = counter_name_attribute_create(group, counter->name);
 if (err)
  return err;


 err = counter_size_attribute_create(group, counter->num_counts,
         "num_counts");
 if (err)
  goto err_free_attr_list;


 err = counter_size_attribute_create(group, counter->num_signals,
         "num_signals");
 if (err)
  goto err_free_attr_list;


 err = counter_device_ext_register(group, counter);
 if (err)
  goto err_free_attr_list;

 return 0;

err_free_attr_list:
 counter_device_attr_list_free(&group->attr_list);
 return err;
}
