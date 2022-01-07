
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct class_dir {int dummy; } ;


 int kfree (struct class_dir*) ;
 struct class_dir* to_class_dir (struct kobject*) ;

__attribute__((used)) static void class_dir_release(struct kobject *kobj)
{
 struct class_dir *dir = to_class_dir(kobj);
 kfree(dir);
}
