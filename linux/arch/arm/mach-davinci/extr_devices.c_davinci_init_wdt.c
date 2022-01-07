
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int davinci_wdt_device ;
 int platform_device_register (int *) ;

int davinci_init_wdt(void)
{
 return platform_device_register(&davinci_wdt_device);
}
