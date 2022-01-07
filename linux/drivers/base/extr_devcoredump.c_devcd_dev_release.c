
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; } ;
struct devcd_entry {TYPE_2__* failing_dev; int owner; int data; int (* free ) (int ) ;} ;
struct TYPE_3__ {scalar_t__ sd; } ;
struct TYPE_4__ {TYPE_1__ kobj; } ;


 struct devcd_entry* dev_to_devcd (struct device*) ;
 int kfree (struct devcd_entry*) ;
 int module_put (int ) ;
 int put_device (TYPE_2__*) ;
 int stub1 (int ) ;
 int sysfs_delete_link (TYPE_1__*,int *,char*) ;

__attribute__((used)) static void devcd_dev_release(struct device *dev)
{
 struct devcd_entry *devcd = dev_to_devcd(dev);

 devcd->free(devcd->data);
 module_put(devcd->owner);





 if (devcd->failing_dev->kobj.sd)
  sysfs_delete_link(&devcd->failing_dev->kobj, &dev->kobj,
      "devcoredump");

 put_device(devcd->failing_dev);
 kfree(devcd);
}
