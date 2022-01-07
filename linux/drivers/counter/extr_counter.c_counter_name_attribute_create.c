
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_name_unit {char* name; } ;
struct counter_device_attr_group {int dummy; } ;
struct counter_attr_parm {char* prefix; char* name; struct counter_name_unit* component; int * store; int show; struct counter_device_attr_group* group; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_attribute_create (struct counter_attr_parm*) ;
 int counter_device_attr_name_show ;
 int kfree (struct counter_name_unit*) ;
 struct counter_name_unit* kmalloc (int,int ) ;

__attribute__((used)) static int counter_name_attribute_create(
 struct counter_device_attr_group *const group,
 const char *const name)
{
 struct counter_name_unit *name_comp;
 struct counter_attr_parm parm;
 int err;


 if (!name)
  return 0;


 name_comp = kmalloc(sizeof(*name_comp), GFP_KERNEL);
 if (!name_comp)
  return -ENOMEM;
 name_comp->name = name;


 parm.group = group;
 parm.prefix = "";
 parm.name = "name";
 parm.show = counter_device_attr_name_show;
 parm.store = ((void*)0);
 parm.component = name_comp;
 err = counter_attribute_create(&parm);
 if (err)
  goto err_free_name_comp;

 return 0;

err_free_name_comp:
 kfree(name_comp);
 return err;
}
