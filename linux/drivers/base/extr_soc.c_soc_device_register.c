
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_device_attribute {int dummy; } ;
struct TYPE_6__ {int release; int groups; TYPE_1__* bus; } ;
struct soc_device {int soc_dev_num; TYPE_2__ dev; struct soc_device_attribute* attr; } ;
struct TYPE_5__ {int p; } ;


 int EBUSY ;
 int ENOMEM ;
 struct soc_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_2__*,char*,int) ;
 int device_register (TYPE_2__*) ;
 struct soc_device_attribute* early_soc_dev_attr ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct soc_device*) ;
 struct soc_device* kzalloc (int,int ) ;
 int put_device (TYPE_2__*) ;
 int soc_attr_groups ;
 TYPE_1__ soc_bus_type ;
 int soc_ida ;
 int soc_release ;

struct soc_device *soc_device_register(struct soc_device_attribute *soc_dev_attr)
{
 struct soc_device *soc_dev;
 int ret;

 if (!soc_bus_type.p) {
  if (early_soc_dev_attr)
   return ERR_PTR(-EBUSY);
  early_soc_dev_attr = soc_dev_attr;
  return ((void*)0);
 }

 soc_dev = kzalloc(sizeof(*soc_dev), GFP_KERNEL);
 if (!soc_dev) {
  ret = -ENOMEM;
  goto out1;
 }


 ret = ida_simple_get(&soc_ida, 0, 0, GFP_KERNEL);
 if (ret < 0)
  goto out2;
 soc_dev->soc_dev_num = ret;

 soc_dev->attr = soc_dev_attr;
 soc_dev->dev.bus = &soc_bus_type;
 soc_dev->dev.groups = soc_attr_groups;
 soc_dev->dev.release = soc_release;

 dev_set_name(&soc_dev->dev, "soc%d", soc_dev->soc_dev_num);

 ret = device_register(&soc_dev->dev);
 if (ret)
  goto out3;

 return soc_dev;

out3:
 ida_simple_remove(&soc_ida, soc_dev->soc_dev_num);
 put_device(&soc_dev->dev);
 soc_dev = ((void*)0);
out2:
 kfree(soc_dev);
out1:
 return ERR_PTR(ret);
}
