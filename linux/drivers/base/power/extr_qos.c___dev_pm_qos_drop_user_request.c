
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* qos; } ;
struct device {TYPE_2__ power; } ;
struct dev_pm_qos_request {int dummy; } ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;
struct TYPE_3__ {struct dev_pm_qos_request* flags_req; struct dev_pm_qos_request* latency_tolerance_req; struct dev_pm_qos_request* resume_latency_req; } ;





 int WARN_ON (int) ;
 int __dev_pm_qos_remove_request (struct dev_pm_qos_request*) ;
 int kfree (struct dev_pm_qos_request*) ;

__attribute__((used)) static void __dev_pm_qos_drop_user_request(struct device *dev,
        enum dev_pm_qos_req_type type)
{
 struct dev_pm_qos_request *req = ((void*)0);

 switch(type) {
 case 128:
  req = dev->power.qos->resume_latency_req;
  dev->power.qos->resume_latency_req = ((void*)0);
  break;
 case 129:
  req = dev->power.qos->latency_tolerance_req;
  dev->power.qos->latency_tolerance_req = ((void*)0);
  break;
 case 130:
  req = dev->power.qos->flags_req;
  dev->power.qos->flags_req = ((void*)0);
  break;
 default:
  WARN_ON(1);
  return;
 }
 __dev_pm_qos_remove_request(req);
 kfree(req);
}
