
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct class {TYPE_1__* p; int class_groups; int name; } ;
struct TYPE_2__ {int subsys; } ;


 int class_remove_groups (struct class*,int ) ;
 int kset_unregister (int *) ;
 int pr_debug (char*,int ) ;

void class_unregister(struct class *cls)
{
 pr_debug("device class '%s': unregistering\n", cls->name);
 class_remove_groups(cls, cls->class_groups);
 kset_unregister(&cls->p->subsys);
}
