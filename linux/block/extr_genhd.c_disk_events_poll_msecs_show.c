
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {TYPE_1__* ev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int poll_msecs; } ;


 struct gendisk* dev_to_disk (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t disk_events_poll_msecs_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (!disk->ev)
  return sprintf(buf, "-1\n");

 return sprintf(buf, "%ld\n", disk->ev->poll_msecs);
}
