
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int omap_do_wfi () ;

__attribute__((used)) static int omap_enter_idle_simple(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
   int index)
{
 omap_do_wfi();
 return index;
}
