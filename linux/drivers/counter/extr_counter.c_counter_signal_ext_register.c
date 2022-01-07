
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_signal_ext_unit {struct counter_signal_ext const* ext; struct counter_signal* signal; } ;
struct counter_signal_ext {scalar_t__ write; scalar_t__ read; int name; } ;
struct counter_signal {size_t num_ext; struct counter_signal_ext* ext; } ;
struct counter_device_attr_group {int attr_list; } ;
struct counter_attr_parm {char* prefix; struct counter_signal_ext_unit* component; int * store; int * show; int name; struct counter_device_attr_group* group; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_attribute_create (struct counter_attr_parm*) ;
 int counter_device_attr_list_free (int *) ;
 int * counter_signal_ext_show ;
 int * counter_signal_ext_store ;
 int kfree (struct counter_signal_ext_unit*) ;
 struct counter_signal_ext_unit* kmalloc (int,int ) ;

__attribute__((used)) static int counter_signal_ext_register(
 struct counter_device_attr_group *const group,
 struct counter_signal *const signal)
{
 const size_t num_ext = signal->num_ext;
 size_t i;
 const struct counter_signal_ext *ext;
 struct counter_signal_ext_unit *signal_ext_comp;
 struct counter_attr_parm parm;
 int err;


 for (i = 0 ; i < num_ext; i++) {
  ext = signal->ext + i;


  signal_ext_comp = kmalloc(sizeof(*signal_ext_comp), GFP_KERNEL);
  if (!signal_ext_comp) {
   err = -ENOMEM;
   goto err_free_attr_list;
  }
  signal_ext_comp->signal = signal;
  signal_ext_comp->ext = ext;


  parm.group = group;
  parm.prefix = "";
  parm.name = ext->name;
  parm.show = (ext->read) ? counter_signal_ext_show : ((void*)0);
  parm.store = (ext->write) ? counter_signal_ext_store : ((void*)0);
  parm.component = signal_ext_comp;
  err = counter_attribute_create(&parm);
  if (err) {
   kfree(signal_ext_comp);
   goto err_free_attr_list;
  }
 }

 return 0;

err_free_attr_list:
 counter_device_attr_list_free(&group->attr_list);
 return err;
}
