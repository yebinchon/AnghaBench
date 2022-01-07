
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int at91_standby () ;

__attribute__((used)) static int at91_enter_idle(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
          int index)
{
 at91_standby();
 return index;
}
