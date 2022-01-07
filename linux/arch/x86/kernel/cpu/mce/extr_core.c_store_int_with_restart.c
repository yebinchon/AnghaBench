
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long check_interval ;
 int device_store_ulong (struct device*,struct device_attribute*,char const*,size_t) ;
 int mce_restart () ;
 int mce_sysfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t store_int_with_restart(struct device *s,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 unsigned long old_check_interval = check_interval;
 ssize_t ret = device_store_ulong(s, attr, buf, size);

 if (check_interval == old_check_interval)
  return ret;

 mutex_lock(&mce_sysfs_mutex);
 mce_restart();
 mutex_unlock(&mce_sysfs_mutex);

 return ret;
}
