
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct blkfront_info {scalar_t__ xbdev; scalar_t__ is_ready; } ;


 struct blkfront_info* dev_get_drvdata (int *) ;

__attribute__((used)) static int blkfront_is_ready(struct xenbus_device *dev)
{
 struct blkfront_info *info = dev_get_drvdata(&dev->dev);

 return info->is_ready && info->xbdev;
}
