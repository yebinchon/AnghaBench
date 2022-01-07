
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_latency_tolerance; int ignore_children; } ;
struct device {struct device* parent; TYPE_1__ power; } ;
struct dev_pm_qos_request {int * dev; } ;
typedef int s32 ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;




 int ENODEV ;
 int dev_pm_qos_add_request (struct device*,struct dev_pm_qos_request*,int,int ) ;

int dev_pm_qos_add_ancestor_request(struct device *dev,
        struct dev_pm_qos_request *req,
        enum dev_pm_qos_req_type type, s32 value)
{
 struct device *ancestor = dev->parent;
 int ret = -ENODEV;

 switch (type) {
 case 128:
  while (ancestor && !ancestor->power.ignore_children)
   ancestor = ancestor->parent;

  break;
 case 129:
  while (ancestor && !ancestor->power.set_latency_tolerance)
   ancestor = ancestor->parent;

  break;
 default:
  ancestor = ((void*)0);
 }
 if (ancestor)
  ret = dev_pm_qos_add_request(ancestor, req, type, value);

 if (ret < 0)
  req->dev = ((void*)0);

 return ret;
}
