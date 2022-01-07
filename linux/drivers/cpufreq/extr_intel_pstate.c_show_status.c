
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int intel_pstate_driver_lock ;
 int intel_pstate_show_status (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t show_status(struct kobject *kobj,
      struct kobj_attribute *attr, char *buf)
{
 ssize_t ret;

 mutex_lock(&intel_pstate_driver_lock);
 ret = intel_pstate_show_status(buf);
 mutex_unlock(&intel_pstate_driver_lock);

 return ret;
}
