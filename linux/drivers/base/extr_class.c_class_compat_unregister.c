
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_compat {int kobj; } ;


 int kfree (struct class_compat*) ;
 int kobject_put (int ) ;

void class_compat_unregister(struct class_compat *cls)
{
 kobject_put(cls->kobj);
 kfree(cls);
}
