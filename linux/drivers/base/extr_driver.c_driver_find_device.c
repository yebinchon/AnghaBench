
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct klist_iter {int dummy; } ;
struct device_driver {TYPE_1__* p; } ;
struct device {TYPE_2__* p; } ;
struct TYPE_4__ {int knode_driver; } ;
struct TYPE_3__ {int klist_devices; } ;


 scalar_t__ get_device (struct device*) ;
 int klist_iter_exit (struct klist_iter*) ;
 int klist_iter_init_node (int *,struct klist_iter*,int *) ;
 struct device* next_device (struct klist_iter*) ;

struct device *driver_find_device(struct device_driver *drv,
      struct device *start, const void *data,
      int (*match)(struct device *dev, const void *data))
{
 struct klist_iter i;
 struct device *dev;

 if (!drv || !drv->p)
  return ((void*)0);

 klist_iter_init_node(&drv->p->klist_devices, &i,
        (start ? &start->p->knode_driver : ((void*)0)));
 while ((dev = next_device(&i)))
  if (match(dev, data) && get_device(dev))
   break;
 klist_iter_exit(&i);
 return dev;
}
