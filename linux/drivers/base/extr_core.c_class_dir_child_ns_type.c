
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_ns_type_operations {int dummy; } ;
struct class_dir {TYPE_1__* class; } ;
struct TYPE_2__ {struct kobj_ns_type_operations const* ns_type; } ;


 struct class_dir* to_class_dir (struct kobject*) ;

__attribute__((used)) static const
struct kobj_ns_type_operations *class_dir_child_ns_type(struct kobject *kobj)
{
 struct class_dir *dir = to_class_dir(kobj);
 return dir->class->ns_type;
}
