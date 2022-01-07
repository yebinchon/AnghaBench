
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ timer; } ;


 TYPE_1__* fsl_wakeup ;
 int mpic_get_remain_time (scalar_t__,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,scalar_t__) ;
 int sysfs_lock ;

__attribute__((used)) static ssize_t fsl_timer_wakeup_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 time64_t interval = 0;

 mutex_lock(&sysfs_lock);
 if (fsl_wakeup->timer) {
  mpic_get_remain_time(fsl_wakeup->timer, &interval);
  interval++;
 }
 mutex_unlock(&sysfs_lock);

 return sprintf(buf, "%lld\n", interval);
}
