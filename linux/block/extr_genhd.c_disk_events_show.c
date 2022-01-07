
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int event_flags; int events; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DISK_EVENT_FLAG_UEVENT ;
 int __disk_events_show (int ,char*) ;
 struct gendisk* dev_to_disk (struct device*) ;

__attribute__((used)) static ssize_t disk_events_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (!(disk->event_flags & DISK_EVENT_FLAG_UEVENT))
  return 0;

 return __disk_events_show(disk->events, buf);
}
