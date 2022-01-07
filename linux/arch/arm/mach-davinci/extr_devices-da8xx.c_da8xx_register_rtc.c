
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int da8xx_rtc_device ;
 int platform_device_register (int *) ;

int da8xx_register_rtc(void)
{
 return platform_device_register(&da8xx_rtc_device);
}
