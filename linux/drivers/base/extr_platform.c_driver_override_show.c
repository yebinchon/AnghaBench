
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t driver_override_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct platform_device *pdev = to_platform_device(dev);
 ssize_t len;

 device_lock(dev);
 len = sprintf(buf, "%s\n", pdev->driver_override);
 device_unlock(dev);
 return len;
}
