
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* qos; } ;
struct device {TYPE_1__ power; } ;
typedef int s32 ;
struct TYPE_4__ {int flags_req; } ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (TYPE_2__*) ;
 int __dev_pm_qos_update_request (int ,int ) ;
 int dev_pm_qos_mtx ;
 int dev_pm_qos_requested_flags (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

int dev_pm_qos_update_flags(struct device *dev, s32 mask, bool set)
{
 s32 value;
 int ret;

 pm_runtime_get_sync(dev);
 mutex_lock(&dev_pm_qos_mtx);

 if (IS_ERR_OR_NULL(dev->power.qos) || !dev->power.qos->flags_req) {
  ret = -EINVAL;
  goto out;
 }

 value = dev_pm_qos_requested_flags(dev);
 if (set)
  value |= mask;
 else
  value &= ~mask;

 ret = __dev_pm_qos_update_request(dev->power.qos->flags_req, value);

 out:
 mutex_unlock(&dev_pm_qos_mtx);
 pm_runtime_put(dev);
 return ret;
}
