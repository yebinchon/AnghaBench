
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;


 int KOBJ_ADD ;
 int KOBJ_REMOVE ;
 int acpi_platform_notify (struct device*,int) ;
 int platform_notify (struct device*) ;
 int platform_notify_remove (struct device*) ;
 int software_node_notify (struct device*,int) ;

__attribute__((used)) static int
device_platform_notify(struct device *dev, enum kobject_action action)
{
 int ret;

 ret = acpi_platform_notify(dev, action);
 if (ret)
  return ret;

 ret = software_node_notify(dev, action);
 if (ret)
  return ret;

 if (platform_notify && action == KOBJ_ADD)
  platform_notify(dev);
 else if (platform_notify_remove && action == KOBJ_REMOVE)
  platform_notify_remove(dev);
 return 0;
}
