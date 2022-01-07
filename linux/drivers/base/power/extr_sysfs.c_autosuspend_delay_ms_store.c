
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct TYPE_2__ {int use_autosuspend; } ;
struct device {TYPE_1__ power; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,long) ;

__attribute__((used)) static ssize_t autosuspend_delay_ms_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t n)
{
 long delay;

 if (!dev->power.use_autosuspend)
  return -EIO;

 if (kstrtol(buf, 10, &delay) != 0 || delay != (int) delay)
  return -EINVAL;

 device_lock(dev);
 pm_runtime_set_autosuspend_delay(dev, delay);
 device_unlock(dev);
 return n;
}
