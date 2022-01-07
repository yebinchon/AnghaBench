
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_private {struct class* class; } ;
struct kobject {int dummy; } ;
struct kobj_ns_type_operations {int dummy; } ;
struct class {struct kobj_ns_type_operations const* ns_type; } ;


 struct subsys_private* to_subsys_private (struct kobject*) ;

__attribute__((used)) static const struct kobj_ns_type_operations *class_child_ns_type(struct kobject *kobj)
{
 struct subsys_private *cp = to_subsys_private(kobj);
 struct class *class = cp->class;

 return class->ns_type;
}
