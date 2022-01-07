
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
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
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t driver_override_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct platform_device *pdev = to_platform_device(dev);
 char *driver_override, *old, *cp;


 if (count >= (PAGE_SIZE - 1))
  return -EINVAL;

 driver_override = kstrndup(buf, count, GFP_KERNEL);
 if (!driver_override)
  return -ENOMEM;

 cp = strchr(driver_override, '\n');
 if (cp)
  *cp = '\0';

 device_lock(dev);
 old = pdev->driver_override;
 if (strlen(driver_override)) {
  pdev->driver_override = driver_override;
 } else {
  kfree(driver_override);
  pdev->driver_override = ((void*)0);
 }
 device_unlock(dev);

 kfree(old);

 return count;
}
