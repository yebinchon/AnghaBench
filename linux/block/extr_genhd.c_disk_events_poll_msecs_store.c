
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {TYPE_1__* ev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {long poll_msecs; } ;


 size_t EINVAL ;
 size_t ENODEV ;
 int __disk_unblock_events (struct gendisk*,int) ;
 struct gendisk* dev_to_disk (struct device*) ;
 int disk_block_events (struct gendisk*) ;
 int sscanf (char const*,char*,long*) ;

__attribute__((used)) static ssize_t disk_events_poll_msecs_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct gendisk *disk = dev_to_disk(dev);
 long intv;

 if (!count || !sscanf(buf, "%ld", &intv))
  return -EINVAL;

 if (intv < 0 && intv != -1)
  return -EINVAL;

 if (!disk->ev)
  return -ENODEV;

 disk_block_events(disk);
 disk->ev->poll_msecs = intv;
 __disk_unblock_events(disk, 1);

 return count;
}
