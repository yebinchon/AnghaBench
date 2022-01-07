
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dev_pm_qos_req_type { ____Placeholder_dev_pm_qos_req_type } dev_pm_qos_req_type ;


 int __dev_pm_qos_drop_user_request (struct device*,int) ;
 int dev_pm_qos_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dev_pm_qos_drop_user_request(struct device *dev,
      enum dev_pm_qos_req_type type)
{
 mutex_lock(&dev_pm_qos_mtx);
 __dev_pm_qos_drop_user_request(dev, type);
 mutex_unlock(&dev_pm_qos_mtx);
}
