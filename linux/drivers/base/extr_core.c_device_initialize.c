
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int suppliers; int consumers; } ;
struct TYPE_4__ {int kset; } ;
struct device {TYPE_1__ links; int msi_list; int devres_head; int devres_lock; int mutex; int lockdep_mutex; int dma_pools; TYPE_2__ kobj; } ;


 int DL_DEV_NO_DRIVER ;
 int INIT_LIST_HEAD (int *) ;
 int device_ktype ;
 int device_pm_init (struct device*) ;
 int devices_kset ;
 int kobject_init (TYPE_2__*,int *) ;
 int lockdep_set_novalidate_class (int *) ;
 int mutex_init (int *) ;
 int set_dev_node (struct device*,int) ;
 int spin_lock_init (int *) ;

void device_initialize(struct device *dev)
{
 dev->kobj.kset = devices_kset;
 kobject_init(&dev->kobj, &device_ktype);
 INIT_LIST_HEAD(&dev->dma_pools);
 mutex_init(&dev->mutex);



 lockdep_set_novalidate_class(&dev->mutex);
 spin_lock_init(&dev->devres_lock);
 INIT_LIST_HEAD(&dev->devres_head);
 device_pm_init(dev);
 set_dev_node(dev, -1);



 INIT_LIST_HEAD(&dev->links.consumers);
 INIT_LIST_HEAD(&dev->links.suppliers);
 dev->links.status = DL_DEV_NO_DRIVER;
}
