
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kset {TYPE_1__* uevent_ops; } ;
struct kobject {struct kset* kset; struct kobject* parent; } ;
struct kobj_uevent_env {int envp_idx; char** envp; } ;
struct device_attribute {int dummy; } ;
struct device {struct kobject kobj; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* uevent ) (struct kset*,struct kobject*,struct kobj_uevent_env*) ;int (* filter ) (struct kset*,struct kobject*) ;} ;


 size_t ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct kobj_uevent_env*) ;
 struct kobj_uevent_env* kzalloc (int,int ) ;
 scalar_t__ sprintf (char*,char*,char*) ;
 int stub1 (struct kset*,struct kobject*) ;
 int stub2 (struct kset*,struct kobject*,struct kobj_uevent_env*) ;

__attribute__((used)) static ssize_t uevent_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct kobject *top_kobj;
 struct kset *kset;
 struct kobj_uevent_env *env = ((void*)0);
 int i;
 size_t count = 0;
 int retval;


 top_kobj = &dev->kobj;
 while (!top_kobj->kset && top_kobj->parent)
  top_kobj = top_kobj->parent;
 if (!top_kobj->kset)
  goto out;

 kset = top_kobj->kset;
 if (!kset->uevent_ops || !kset->uevent_ops->uevent)
  goto out;


 if (kset->uevent_ops && kset->uevent_ops->filter)
  if (!kset->uevent_ops->filter(kset, &dev->kobj))
   goto out;

 env = kzalloc(sizeof(struct kobj_uevent_env), GFP_KERNEL);
 if (!env)
  return -ENOMEM;


 retval = kset->uevent_ops->uevent(kset, &dev->kobj, env);
 if (retval)
  goto out;


 for (i = 0; i < env->envp_idx; i++)
  count += sprintf(&buf[count], "%s\n", env->envp[i]);
out:
 kfree(env);
 return count;
}
