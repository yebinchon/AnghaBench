
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct counter_func_avail_unit {int num_functions; int functions_list; struct counter_count* count; } ;
struct counter_device_attr_group {int attr_list; } ;
struct counter_device {TYPE_1__* ops; } ;
struct counter_count_unit {int num_functions; int functions_list; struct counter_count* count; } ;
struct counter_count {int name; int num_functions; int functions_list; } ;
struct counter_attr_parm {char* prefix; char* name; struct counter_func_avail_unit* component; int * store; int * show; struct counter_device_attr_group* group; } ;
struct TYPE_2__ {scalar_t__ function_set; scalar_t__ function_get; scalar_t__ count_write; scalar_t__ count_read; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_attribute_create (struct counter_attr_parm*) ;
 int counter_count_ext_register (struct counter_device_attr_group* const,struct counter_count* const) ;
 int * counter_count_function_available_show ;
 int * counter_count_show ;
 int * counter_count_store ;
 int counter_device_attr_list_free (int *) ;
 int * counter_function_show ;
 int * counter_function_store ;
 int counter_name_attribute_create (struct counter_device_attr_group* const,int ) ;
 int kfree (struct counter_func_avail_unit*) ;
 struct counter_func_avail_unit* kmalloc (int,int ) ;

__attribute__((used)) static int counter_count_attributes_create(
 struct counter_device_attr_group *const group,
 const struct counter_device *const counter,
 struct counter_count *const count)
{
 struct counter_count_unit *count_comp;
 struct counter_attr_parm parm;
 int err;
 struct counter_count_unit *func_comp;
 struct counter_func_avail_unit *avail_comp;


 count_comp = kmalloc(sizeof(*count_comp), GFP_KERNEL);
 if (!count_comp)
  return -ENOMEM;
 count_comp->count = count;


 parm.group = group;
 parm.prefix = "";
 parm.name = "count";
 parm.show = (counter->ops->count_read) ? counter_count_show : ((void*)0);
 parm.store = (counter->ops->count_write) ? counter_count_store : ((void*)0);
 parm.component = count_comp;
 err = counter_attribute_create(&parm);
 if (err) {
  kfree(count_comp);
  return err;
 }


 func_comp = kmalloc(sizeof(*func_comp), GFP_KERNEL);
 if (!func_comp) {
  err = -ENOMEM;
  goto err_free_attr_list;
 }
 func_comp->count = count;


 parm.group = group;
 parm.prefix = "";
 parm.name = "function";
 parm.show = (counter->ops->function_get) ? counter_function_show : ((void*)0);
 parm.store = (counter->ops->function_set) ? counter_function_store : ((void*)0);
 parm.component = func_comp;
 err = counter_attribute_create(&parm);
 if (err) {
  kfree(func_comp);
  goto err_free_attr_list;
 }


 avail_comp = kmalloc(sizeof(*avail_comp), GFP_KERNEL);
 if (!avail_comp) {
  err = -ENOMEM;
  goto err_free_attr_list;
 }
 avail_comp->functions_list = count->functions_list;
 avail_comp->num_functions = count->num_functions;


 parm.group = group;
 parm.prefix = "";
 parm.name = "function_available";
 parm.show = counter_count_function_available_show;
 parm.store = ((void*)0);
 parm.component = avail_comp;
 err = counter_attribute_create(&parm);
 if (err) {
  kfree(avail_comp);
  goto err_free_attr_list;
 }


 err = counter_name_attribute_create(group, count->name);
 if (err)
  goto err_free_attr_list;


 err = counter_count_ext_register(group, count);
 if (err)
  goto err_free_attr_list;

 return 0;

err_free_attr_list:
 counter_device_attr_list_free(&group->attr_list);
 return err;
}
