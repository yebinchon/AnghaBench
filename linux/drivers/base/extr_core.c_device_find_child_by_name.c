
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct klist_iter {int dummy; } ;
struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int klist_children; } ;


 int dev_name (struct device*) ;
 scalar_t__ get_device (struct device*) ;
 int klist_iter_exit (struct klist_iter*) ;
 int klist_iter_init (int *,struct klist_iter*) ;
 struct device* next_device (struct klist_iter*) ;
 int strcmp (int ,char const*) ;

struct device *device_find_child_by_name(struct device *parent,
      const char *name)
{
 struct klist_iter i;
 struct device *child;

 if (!parent)
  return ((void*)0);

 klist_iter_init(&parent->p->klist_children, &i);
 while ((child = next_device(&i)))
  if (!strcmp(dev_name(child), name) && get_device(child))
   break;
 klist_iter_exit(&i);
 return child;
}
