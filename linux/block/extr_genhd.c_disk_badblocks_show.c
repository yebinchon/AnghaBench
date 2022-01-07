
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int bb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int badblocks_show (int ,char*,int ) ;
 struct gendisk* dev_to_disk (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t disk_badblocks_show(struct device *dev,
     struct device_attribute *attr,
     char *page)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (!disk->bb)
  return sprintf(page, "\n");

 return badblocks_show(disk->bb, page, 0);
}
