
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_platform_driver ;
 int platform_driver_register (int *) ;
 int platform_registered ;
 int pr_err (char*,int) ;

void ipmi_si_platform_init(void)
{
 int rv = platform_driver_register(&ipmi_platform_driver);
 if (rv)
  pr_err("Unable to register driver: %d\n", rv);
 else
  platform_registered = 1;
}
