
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gendisk* dev_to_disk (struct device*) ;
 scalar_t__ get_disk_ro (struct gendisk*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t disk_ro_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);

 return sprintf(buf, "%d\n", get_disk_ro(disk) ? 1 : 0);
}
