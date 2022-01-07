
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gendisk* dev_to_disk (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t disk_capability_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);

 return sprintf(buf, "%x\n", disk->flags);
}
