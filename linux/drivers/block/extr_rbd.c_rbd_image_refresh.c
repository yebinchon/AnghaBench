
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 int rbd_dev_refresh (struct rbd_device*) ;

__attribute__((used)) static ssize_t rbd_image_refresh(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t size)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);
 int ret;

 ret = rbd_dev_refresh(rbd_dev);
 if (ret)
  return ret;

 return size;
}
