
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {struct dock_station* platform_data; } ;
typedef int ssize_t ;


 int ACPI_NOTIFY_EJECT_REQUEST ;
 int EINVAL ;
 int acpi_scan_lock_acquire () ;
 int acpi_scan_lock_release () ;
 int begin_undock (struct dock_station*) ;
 int handle_eject_request (struct dock_station*,int ) ;

__attribute__((used)) static ssize_t write_undock(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 int ret;
 struct dock_station *dock_station = dev->platform_data;

 if (!count)
  return -EINVAL;

 acpi_scan_lock_acquire();
 begin_undock(dock_station);
 ret = handle_eject_request(dock_station, ACPI_NOTIFY_EJECT_REQUEST);
 acpi_scan_lock_release();
 return ret ? ret: count;
}
