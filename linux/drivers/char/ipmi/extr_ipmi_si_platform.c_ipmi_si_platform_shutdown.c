
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_platform_driver ;
 int platform_driver_unregister (int *) ;
 scalar_t__ platform_registered ;

void ipmi_si_platform_shutdown(void)
{
 if (platform_registered)
  platform_driver_unregister(&ipmi_platform_driver);
}
