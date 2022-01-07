
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amba_device {char* driver_override; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 struct amba_device* to_amba_device (struct device*) ;

__attribute__((used)) static ssize_t driver_override_store(struct device *_dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct amba_device *dev = to_amba_device(_dev);
 char *driver_override, *old, *cp;


 if (count >= (PAGE_SIZE - 1))
  return -EINVAL;

 driver_override = kstrndup(buf, count, GFP_KERNEL);
 if (!driver_override)
  return -ENOMEM;

 cp = strchr(driver_override, '\n');
 if (cp)
  *cp = '\0';

 device_lock(_dev);
 old = dev->driver_override;
 if (strlen(driver_override)) {
  dev->driver_override = driver_override;
 } else {
  kfree(driver_override);
  dev->driver_override = ((void*)0);
 }
 device_unlock(_dev);

 kfree(old);

 return count;
}
