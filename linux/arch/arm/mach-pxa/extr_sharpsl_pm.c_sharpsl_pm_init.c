
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int sharpsl_pm_driver ;

__attribute__((used)) static int sharpsl_pm_init(void)
{
 return platform_driver_register(&sharpsl_pm_driver);
}
