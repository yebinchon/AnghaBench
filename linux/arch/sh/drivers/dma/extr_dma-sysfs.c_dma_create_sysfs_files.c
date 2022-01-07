
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_info {TYPE_1__* pdev; } ;
struct device {int kobj; int * bus; int id; } ;
struct dma_channel {int chan; int vchan; struct device dev; } ;
typedef int name ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int dev_attr_config ;
 int dev_attr_count ;
 int dev_attr_dev_id ;
 int dev_attr_flags ;
 int dev_attr_mode ;
 int dev_err (TYPE_2__*,char*) ;
 int device_create_file (struct device*,int *) ;
 int device_register (struct device*) ;
 int dma_subsys ;
 int snprintf (char*,int,char*,int) ;
 int sysfs_create_link (int *,int *,char*) ;
 scalar_t__ unlikely (int) ;

int dma_create_sysfs_files(struct dma_channel *chan, struct dma_info *info)
{
 struct device *dev = &chan->dev;
 char name[16];
 int ret;

 dev->id = chan->vchan;
 dev->bus = &dma_subsys;

 ret = device_register(dev);
 if (ret)
  return ret;

 ret |= device_create_file(dev, &dev_attr_dev_id);
 ret |= device_create_file(dev, &dev_attr_count);
 ret |= device_create_file(dev, &dev_attr_mode);
 ret |= device_create_file(dev, &dev_attr_flags);
 ret |= device_create_file(dev, &dev_attr_config);

 if (unlikely(ret)) {
  dev_err(&info->pdev->dev, "Failed creating attrs\n");
  return ret;
 }

 snprintf(name, sizeof(name), "dma%d", chan->chan);
 return sysfs_create_link(&info->pdev->dev.kobj, &dev->kobj, name);
}
