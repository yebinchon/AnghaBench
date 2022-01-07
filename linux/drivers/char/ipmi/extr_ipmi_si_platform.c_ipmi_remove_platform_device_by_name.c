
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,char*,int ) ;
 int pdev_match_name ;
 int platform_bus_type ;
 int platform_device_unregister (struct platform_device*) ;
 int put_device (struct device*) ;
 struct platform_device* to_platform_device (struct device*) ;

void ipmi_remove_platform_device_by_name(char *name)
{
 struct device *dev;

 while ((dev = bus_find_device(&platform_bus_type, ((void*)0), name,
          pdev_match_name))) {
  struct platform_device *pdev = to_platform_device(dev);

  platform_device_unregister(pdev);
  put_device(dev);
 }
}
