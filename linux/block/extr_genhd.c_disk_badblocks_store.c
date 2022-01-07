
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int bb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 int badblocks_store (int ,char const*,size_t,int ) ;
 struct gendisk* dev_to_disk (struct device*) ;

__attribute__((used)) static ssize_t disk_badblocks_store(struct device *dev,
     struct device_attribute *attr,
     const char *page, size_t len)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (!disk->bb)
  return -ENXIO;

 return badblocks_store(disk->bb, page, len, 0);
}
