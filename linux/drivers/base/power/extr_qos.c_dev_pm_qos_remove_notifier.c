
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_5__ {TYPE_3__* qos; } ;
struct device {TYPE_2__ power; } ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;
struct TYPE_4__ {int notifiers; } ;
struct TYPE_6__ {TYPE_1__ resume_latency; } ;



 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (TYPE_3__*) ;
 int WARN_ON (int) ;
 int blocking_notifier_chain_unregister (int ,struct notifier_block*) ;
 int dev_pm_qos_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dev_pm_qos_remove_notifier(struct device *dev,
          struct notifier_block *notifier,
          enum dev_pm_qos_req_type type)
{
 int ret = 0;

 mutex_lock(&dev_pm_qos_mtx);


 if (IS_ERR_OR_NULL(dev->power.qos))
  goto unlock;

 switch (type) {
 case 128:
  ret = blocking_notifier_chain_unregister(dev->power.qos->resume_latency.notifiers,
        notifier);
  break;
 default:
  WARN_ON(1);
  ret = -EINVAL;
 }

unlock:
 mutex_unlock(&dev_pm_qos_mtx);
 return ret;
}
