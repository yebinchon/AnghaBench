
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int memhp_auto_online ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t auto_online_blocks_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 if (sysfs_streq(buf, "online"))
  memhp_auto_online = 1;
 else if (sysfs_streq(buf, "offline"))
  memhp_auto_online = 0;
 else
  return -EINVAL;

 return count;
}
