
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct counter_ext_unit {TYPE_1__* ext; } ;
struct counter_device_attr_group {int attr_list; } ;
struct counter_device {size_t num_ext; TYPE_1__* ext; } ;
struct counter_attr_parm {char* prefix; struct counter_ext_unit* component; int * store; int * show; int name; struct counter_device_attr_group* group; } ;
struct TYPE_2__ {scalar_t__ write; scalar_t__ read; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_attribute_create (struct counter_attr_parm*) ;
 int counter_device_attr_list_free (int *) ;
 int * counter_device_ext_show ;
 int * counter_device_ext_store ;
 int kfree (struct counter_ext_unit*) ;
 struct counter_ext_unit* kmalloc (int,int ) ;

__attribute__((used)) static int counter_device_ext_register(
 struct counter_device_attr_group *const group,
 struct counter_device *const counter)
{
 size_t i;
 struct counter_ext_unit *ext_comp;
 struct counter_attr_parm parm;
 int err;


 for (i = 0 ; i < counter->num_ext; i++) {

  ext_comp = kmalloc(sizeof(*ext_comp), GFP_KERNEL);
  if (!ext_comp) {
   err = -ENOMEM;
   goto err_free_attr_list;
  }

  ext_comp->ext = counter->ext + i;


  parm.group = group;
  parm.prefix = "";
  parm.name = counter->ext[i].name;
  parm.show = (counter->ext[i].read) ? counter_device_ext_show : ((void*)0);
  parm.store = (counter->ext[i].write) ? counter_device_ext_store : ((void*)0);
  parm.component = ext_comp;
  err = counter_attribute_create(&parm);
  if (err) {
   kfree(ext_comp);
   goto err_free_attr_list;
  }
 }

 return 0;

err_free_attr_list:
 counter_device_attr_list_free(&group->attr_list);
 return err;
}
