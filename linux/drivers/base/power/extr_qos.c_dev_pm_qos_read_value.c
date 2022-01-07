
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; struct dev_pm_qos* qos; } ;
struct device {TYPE_1__ power; } ;
struct dev_pm_qos {int resume_latency; } ;
typedef scalar_t__ s32 ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;


 int DEV_PM_QOS_RESUME_LATENCY ;
 scalar_t__ IS_ERR_OR_NULL (struct dev_pm_qos*) ;
 scalar_t__ PM_QOS_RESUME_LATENCY_NO_CONSTRAINT ;
 int WARN_ON (int) ;
 scalar_t__ pm_qos_read_value (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

s32 dev_pm_qos_read_value(struct device *dev, enum dev_pm_qos_req_type type)
{
 struct dev_pm_qos *qos = dev->power.qos;
 unsigned long flags;
 s32 ret;

 spin_lock_irqsave(&dev->power.lock, flags);

 if (type == DEV_PM_QOS_RESUME_LATENCY) {
  ret = IS_ERR_OR_NULL(qos) ? PM_QOS_RESUME_LATENCY_NO_CONSTRAINT
   : pm_qos_read_value(&qos->resume_latency);
 } else {
  WARN_ON(1);
  ret = 0;
 }

 spin_unlock_irqrestore(&dev->power.lock, flags);

 return ret;
}
