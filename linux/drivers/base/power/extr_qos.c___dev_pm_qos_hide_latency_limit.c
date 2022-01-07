
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* qos; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_4__ {scalar_t__ resume_latency_req; } ;


 int DEV_PM_QOS_RESUME_LATENCY ;
 int IS_ERR_OR_NULL (TYPE_2__*) ;
 int __dev_pm_qos_drop_user_request (struct device*,int ) ;

__attribute__((used)) static void __dev_pm_qos_hide_latency_limit(struct device *dev)
{
 if (!IS_ERR_OR_NULL(dev->power.qos) && dev->power.qos->resume_latency_req)
  __dev_pm_qos_drop_user_request(dev, DEV_PM_QOS_RESUME_LATENCY);
}
