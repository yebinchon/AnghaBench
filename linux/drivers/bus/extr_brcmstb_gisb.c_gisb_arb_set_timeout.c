
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_gisb_arb_device {int lock; } ;
typedef int ssize_t ;


 int ARB_TIMER ;
 int EINVAL ;
 struct brcmstb_gisb_arb_device* dev_get_drvdata (struct device*) ;
 int gisb_write (struct brcmstb_gisb_arb_device*,int,int ) ;
 int kstrtoint (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t gisb_arb_set_timeout(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct brcmstb_gisb_arb_device *gdev = dev_get_drvdata(dev);
 int val, ret;

 ret = kstrtoint(buf, 10, &val);
 if (ret < 0)
  return ret;

 if (val == 0 || val >= 0xffffffff)
  return -EINVAL;

 mutex_lock(&gdev->lock);
 gisb_write(gdev, val, ARB_TIMER);
 mutex_unlock(&gdev->lock);

 return count;
}
