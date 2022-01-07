
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ktype; void* kset; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;
struct subsys_private {TYPE_1__ subsys; struct class* class; int mutex; int glue_dirs; int interfaces; int klist_devices; } ;
struct lock_class_key {int dummy; } ;
struct class {int class_groups; struct subsys_private* p; scalar_t__ dev_kobj; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __mutex_init (int *,char*,struct lock_class_key*) ;
 struct class block_class ;
 int class_add_groups (int ,int ) ;
 int class_get (struct class*) ;
 void* class_kset ;
 int class_ktype ;
 int class_put (struct class*) ;
 int kfree (struct subsys_private*) ;
 int klist_class_dev_get ;
 int klist_class_dev_put ;
 int klist_init (int *,int ,int ) ;
 int kobject_set_name (TYPE_2__*,char*,int ) ;
 int kset_init (int *) ;
 int kset_register (TYPE_1__*) ;
 struct subsys_private* kzalloc (int,int ) ;
 int pr_debug (char*,int ) ;
 int sysfs_deprecated ;
 scalar_t__ sysfs_dev_char_kobj ;

int __class_register(struct class *cls, struct lock_class_key *key)
{
 struct subsys_private *cp;
 int error;

 pr_debug("device class '%s': registering\n", cls->name);

 cp = kzalloc(sizeof(*cp), GFP_KERNEL);
 if (!cp)
  return -ENOMEM;
 klist_init(&cp->klist_devices, klist_class_dev_get, klist_class_dev_put);
 INIT_LIST_HEAD(&cp->interfaces);
 kset_init(&cp->glue_dirs);
 __mutex_init(&cp->mutex, "subsys mutex", key);
 error = kobject_set_name(&cp->subsys.kobj, "%s", cls->name);
 if (error) {
  kfree(cp);
  return error;
 }


 if (!cls->dev_kobj)
  cls->dev_kobj = sysfs_dev_char_kobj;






 cp->subsys.kobj.kset = class_kset;

 cp->subsys.kobj.ktype = &class_ktype;
 cp->class = cls;
 cls->p = cp;

 error = kset_register(&cp->subsys);
 if (error) {
  kfree(cp);
  return error;
 }
 error = class_add_groups(class_get(cls), cls->class_groups);
 class_put(cls);
 return error;
}
