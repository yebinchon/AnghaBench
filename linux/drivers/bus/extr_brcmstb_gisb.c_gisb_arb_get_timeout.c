
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_gisb_arb_device {int lock; } ;
typedef int ssize_t ;


 int ARB_TIMER ;
 struct brcmstb_gisb_arb_device* dev_get_drvdata (struct device*) ;
 int gisb_read (struct brcmstb_gisb_arb_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t gisb_arb_get_timeout(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct brcmstb_gisb_arb_device *gdev = dev_get_drvdata(dev);
 u32 timeout;

 mutex_lock(&gdev->lock);
 timeout = gisb_read(gdev, ARB_TIMER);
 mutex_unlock(&gdev->lock);

 return sprintf(buf, "%d", timeout);
}
