
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_private {struct class* class; } ;
struct kobject {int dummy; } ;
struct class {int name; int (* class_release ) (struct class*) ;} ;


 int kfree (struct subsys_private*) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct class*) ;
 struct subsys_private* to_subsys_private (struct kobject*) ;

__attribute__((used)) static void class_release(struct kobject *kobj)
{
 struct subsys_private *cp = to_subsys_private(kobj);
 struct class *class = cp->class;

 pr_debug("class '%s': release.\n", class->name);

 if (class->class_release)
  class->class_release(class);
 else
  pr_debug("class '%s' does not have a release() function, "
    "be careful\n", class->name);

 kfree(cp);
}
