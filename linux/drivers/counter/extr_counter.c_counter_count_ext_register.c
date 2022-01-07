
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device_attr_group {int attr_list; } ;
struct counter_count_ext_unit {struct counter_count_ext const* ext; struct counter_count* count; } ;
struct counter_count_ext {scalar_t__ write; scalar_t__ read; int name; } ;
struct counter_count {size_t num_ext; struct counter_count_ext* ext; } ;
struct counter_attr_parm {char* prefix; struct counter_count_ext_unit* component; int * store; int * show; int name; struct counter_device_attr_group* group; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_attribute_create (struct counter_attr_parm*) ;
 int * counter_count_ext_show ;
 int * counter_count_ext_store ;
 int counter_device_attr_list_free (int *) ;
 int kfree (struct counter_count_ext_unit*) ;
 struct counter_count_ext_unit* kmalloc (int,int ) ;

__attribute__((used)) static int counter_count_ext_register(
 struct counter_device_attr_group *const group,
 struct counter_count *const count)
{
 size_t i;
 const struct counter_count_ext *ext;
 struct counter_count_ext_unit *count_ext_comp;
 struct counter_attr_parm parm;
 int err;


 for (i = 0 ; i < count->num_ext; i++) {
  ext = count->ext + i;


  count_ext_comp = kmalloc(sizeof(*count_ext_comp), GFP_KERNEL);
  if (!count_ext_comp) {
   err = -ENOMEM;
   goto err_free_attr_list;
  }
  count_ext_comp->count = count;
  count_ext_comp->ext = ext;


  parm.group = group;
  parm.prefix = "";
  parm.name = ext->name;
  parm.show = (ext->read) ? counter_count_ext_show : ((void*)0);
  parm.store = (ext->write) ? counter_count_ext_store : ((void*)0);
  parm.component = count_ext_comp;
  err = counter_attribute_create(&parm);
  if (err) {
   kfree(count_ext_comp);
   goto err_free_attr_list;
  }
 }

 return 0;

err_free_attr_list:
 counter_device_attr_list_free(&group->attr_list);
 return err;
}
