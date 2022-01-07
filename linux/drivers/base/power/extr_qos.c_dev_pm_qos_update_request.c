
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pm_qos_request {int dummy; } ;
typedef int s32 ;


 int __dev_pm_qos_update_request (struct dev_pm_qos_request*,int ) ;
 int dev_pm_qos_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dev_pm_qos_update_request(struct dev_pm_qos_request *req, s32 new_value)
{
 int ret;

 mutex_lock(&dev_pm_qos_mtx);
 ret = __dev_pm_qos_update_request(req, new_value);
 mutex_unlock(&dev_pm_qos_mtx);
 return ret;
}
