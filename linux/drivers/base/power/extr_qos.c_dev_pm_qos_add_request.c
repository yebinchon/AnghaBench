
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dev_pm_qos_request {int dummy; } ;
typedef int s32 ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;


 int __dev_pm_qos_add_request (struct device*,struct dev_pm_qos_request*,int,int ) ;
 int dev_pm_qos_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dev_pm_qos_add_request(struct device *dev, struct dev_pm_qos_request *req,
      enum dev_pm_qos_req_type type, s32 value)
{
 int ret;

 mutex_lock(&dev_pm_qos_mtx);
 ret = __dev_pm_qos_add_request(dev, req, type, value);
 mutex_unlock(&dev_pm_qos_mtx);
 return ret;
}
