
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int online_type; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;




 int device_offline (int *) ;
 int device_online (int *) ;
 int lock_device_hotplug_sysfs () ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 struct memory_block* to_memory_block (struct device*) ;
 int unlock_device_hotplug () ;

__attribute__((used)) static ssize_t state_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct memory_block *mem = to_memory_block(dev);
 int ret, online_type;

 ret = lock_device_hotplug_sysfs();
 if (ret)
  return ret;

 if (sysfs_streq(buf, "online_kernel"))
  online_type = 129;
 else if (sysfs_streq(buf, "online_movable"))
  online_type = 128;
 else if (sysfs_streq(buf, "online"))
  online_type = 130;
 else if (sysfs_streq(buf, "offline"))
  online_type = 131;
 else {
  ret = -EINVAL;
  goto err;
 }

 switch (online_type) {
 case 129:
 case 128:
 case 130:

  mem->online_type = online_type;
  ret = device_online(&mem->dev);
  break;
 case 131:
  ret = device_offline(&mem->dev);
  break;
 default:
  ret = -EINVAL;
 }

err:
 unlock_device_hotplug();

 if (ret < 0)
  return ret;
 if (ret)
  return -EINVAL;

 return count;
}
