
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int intel_pstate_driver_lock ;
 int intel_pstate_update_status (char const*,int) ;
 char* memchr (char const*,char,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t store_status(struct kobject *a, struct kobj_attribute *b,
       const char *buf, size_t count)
{
 char *p = memchr(buf, '\n', count);
 int ret;

 mutex_lock(&intel_pstate_driver_lock);
 ret = intel_pstate_update_status(buf, p ? p - buf : count);
 mutex_unlock(&intel_pstate_driver_lock);

 return ret < 0 ? ret : count;
}
