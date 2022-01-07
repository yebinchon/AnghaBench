
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_info {TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct dma_channel {int chan; struct device dev; } ;
typedef int name ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_attr_config ;
 int dev_attr_count ;
 int dev_attr_dev_id ;
 int dev_attr_flags ;
 int dev_attr_mode ;
 int device_remove_file (struct device*,int *) ;
 int device_unregister (struct device*) ;
 int snprintf (char*,int,char*,int) ;
 int sysfs_remove_link (int *,char*) ;

void dma_remove_sysfs_files(struct dma_channel *chan, struct dma_info *info)
{
 struct device *dev = &chan->dev;
 char name[16];

 device_remove_file(dev, &dev_attr_dev_id);
 device_remove_file(dev, &dev_attr_count);
 device_remove_file(dev, &dev_attr_mode);
 device_remove_file(dev, &dev_attr_flags);
 device_remove_file(dev, &dev_attr_config);

 snprintf(name, sizeof(name), "dma%d", chan->chan);
 sysfs_remove_link(&info->pdev->dev.kobj, name);

 device_unregister(dev);
}
