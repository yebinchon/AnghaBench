
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct loop_device loop_device ;
struct gendisk {struct loop_device* private_data; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gendisk* dev_to_disk (struct device*) ;

__attribute__((used)) static ssize_t loop_attr_show(struct device *dev, char *page,
         ssize_t (*callback)(struct loop_device *, char *))
{
 struct gendisk *disk = dev_to_disk(dev);
 struct loop_device *lo = disk->private_data;

 return callback(lo, page);
}
