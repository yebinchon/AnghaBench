
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int arm_pm_idle () ;

__attribute__((used)) static int imx5_cpuidle_enter(struct cpuidle_device *dev,
         struct cpuidle_driver *drv, int index)
{
 arm_pm_idle();
 return index;
}
