
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct klist_iter {int dummy; } ;
struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int klist_children; } ;


 int klist_iter_exit (struct klist_iter*) ;
 int klist_iter_init (int *,struct klist_iter*) ;
 struct device* prev_device (struct klist_iter*) ;

int device_for_each_child_reverse(struct device *parent, void *data,
      int (*fn)(struct device *dev, void *data))
{
 struct klist_iter i;
 struct device *child;
 int error = 0;

 if (!parent->p)
  return 0;

 klist_iter_init(&parent->p->klist_children, &i);
 while ((child = prev_device(&i)) && !error)
  error = fn(child, data);
 klist_iter_exit(&i);
 return error;
}
