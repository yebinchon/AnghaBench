
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct device* dev; int rpm_status; } ;
struct device {int dummy; } ;


 int RPM_ACTIVE ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;

void blk_pm_runtime_init(struct request_queue *q, struct device *dev)
{
 q->dev = dev;
 q->rpm_status = RPM_ACTIVE;
 pm_runtime_set_autosuspend_delay(q->dev, -1);
 pm_runtime_use_autosuspend(q->dev);
}
