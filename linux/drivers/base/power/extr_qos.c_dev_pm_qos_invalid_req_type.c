
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_latency_tolerance; } ;
struct device {TYPE_1__ power; } ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;


 int DEV_PM_QOS_LATENCY_TOLERANCE ;

__attribute__((used)) static bool dev_pm_qos_invalid_req_type(struct device *dev,
     enum dev_pm_qos_req_type type)
{
 return type == DEV_PM_QOS_LATENCY_TOLERANCE &&
        !dev->power.set_latency_tolerance;
}
