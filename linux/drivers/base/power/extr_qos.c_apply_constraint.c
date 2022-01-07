
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flr; int pnode; } ;
struct dev_pm_qos_request {int type; TYPE_2__ data; TYPE_3__* dev; } ;
struct dev_pm_qos {int flags; int latency_tolerance; int resume_latency; } ;
typedef int s32 ;
typedef enum pm_qos_req_action { ____Placeholder_pm_qos_req_action } pm_qos_req_action ;
struct TYPE_4__ {int (* set_latency_tolerance ) (TYPE_3__*,int ) ;struct dev_pm_qos* qos; } ;
struct TYPE_6__ {TYPE_1__ power; } ;





 int EINVAL ;
 int PM_QOS_REMOVE_REQ ;
 int WARN_ON (int) ;
 int pm_qos_read_value (int *) ;
 int pm_qos_update_flags (int *,int *,int,int ) ;
 int pm_qos_update_target (int *,int *,int,int ) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static int apply_constraint(struct dev_pm_qos_request *req,
       enum pm_qos_req_action action, s32 value)
{
 struct dev_pm_qos *qos = req->dev->power.qos;
 int ret;

 switch(req->type) {
 case 128:
  if (WARN_ON(action != PM_QOS_REMOVE_REQ && value < 0))
   value = 0;

  ret = pm_qos_update_target(&qos->resume_latency,
        &req->data.pnode, action, value);
  break;
 case 129:
  ret = pm_qos_update_target(&qos->latency_tolerance,
        &req->data.pnode, action, value);
  if (ret) {
   value = pm_qos_read_value(&qos->latency_tolerance);
   req->dev->power.set_latency_tolerance(req->dev, value);
  }
  break;
 case 130:
  ret = pm_qos_update_flags(&qos->flags, &req->data.flr,
       action, value);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
