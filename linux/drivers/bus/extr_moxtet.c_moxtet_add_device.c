
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxtet_device {scalar_t__ idx; int id; TYPE_1__* moxtet; int dev; } ;
struct TYPE_2__ {int dev; } ;
typedef int DEFINE_MUTEX ;


 int EINVAL ;
 scalar_t__ TURRIS_MOX_MAX_MODULES ;
 int bus_for_each_dev (int *,int *,struct moxtet_device*,int ) ;
 int dev_err (int ,char*,int ,int) ;
 int dev_name (int ) ;
 int dev_set_name (int *,char*,int ,scalar_t__) ;
 int device_add (int *) ;
 int mox_module_name (int) ;
 int moxtet_bus_type ;
 int moxtet_dev_check ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int moxtet_add_device(struct moxtet_device *dev)
{
 static DEFINE_MUTEX(add_mutex);
 int ret;

 if (dev->idx >= TURRIS_MOX_MAX_MODULES || dev->id > 0xf)
  return -EINVAL;

 dev_set_name(&dev->dev, "moxtet-%s.%u", mox_module_name(dev->id),
       dev->idx);

 mutex_lock(&add_mutex);

 ret = bus_for_each_dev(&moxtet_bus_type, ((void*)0), dev,
          moxtet_dev_check);
 if (ret)
  goto done;

 ret = device_add(&dev->dev);
 if (ret < 0)
  dev_err(dev->moxtet->dev, "can't add %s, status %d\n",
   dev_name(dev->moxtet->dev), ret);

done:
 mutex_unlock(&add_mutex);
 return ret;
}
