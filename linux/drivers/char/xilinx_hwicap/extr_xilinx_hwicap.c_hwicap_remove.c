
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwicap_drvdata {int mem_size; int mem_start; int base_address; int cdev; int devt; } ;
struct device {int devt; } ;


 size_t MINOR (int ) ;
 size_t XHWICAP_MINOR ;
 int cdev_del (int *) ;
 struct hwicap_drvdata* dev_get_drvdata (struct device*) ;
 int device_destroy (int ,int ) ;
 int icap_class ;
 int icap_sem ;
 int iounmap (int ) ;
 int kfree (struct hwicap_drvdata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__* probed_devices ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static int hwicap_remove(struct device *dev)
{
 struct hwicap_drvdata *drvdata;

 drvdata = dev_get_drvdata(dev);

 if (!drvdata)
  return 0;

 device_destroy(icap_class, drvdata->devt);
 cdev_del(&drvdata->cdev);
 iounmap(drvdata->base_address);
 release_mem_region(drvdata->mem_start, drvdata->mem_size);
 kfree(drvdata);

 mutex_lock(&icap_sem);
 probed_devices[MINOR(dev->devt)-XHWICAP_MINOR] = 0;
 mutex_unlock(&icap_sem);
 return 0;
}
