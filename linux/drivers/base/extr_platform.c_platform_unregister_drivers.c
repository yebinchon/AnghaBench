
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int dummy; } ;


 int platform_driver_unregister (struct platform_driver* const) ;
 int pr_debug (char*,struct platform_driver* const) ;

void platform_unregister_drivers(struct platform_driver * const *drivers,
     unsigned int count)
{
 while (count--) {
  pr_debug("unregistering platform driver %ps\n", drivers[count]);
  platform_driver_unregister(drivers[count]);
 }
}
