
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_device_register (struct platform_device*) ;
 int platform_device_unregister (struct platform_device*) ;

int platform_add_devices(struct platform_device **devs, int num)
{
 int i, ret = 0;

 for (i = 0; i < num; i++) {
  ret = platform_device_register(devs[i]);
  if (ret) {
   while (--i >= 0)
    platform_device_unregister(devs[i]);
   break;
  }
 }

 return ret;
}
