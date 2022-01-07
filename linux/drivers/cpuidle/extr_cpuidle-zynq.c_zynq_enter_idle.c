
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int cpu_do_idle () ;

__attribute__((used)) static int zynq_enter_idle(struct cpuidle_device *dev,
      struct cpuidle_driver *drv, int index)
{

 cpu_do_idle();

 return index;
}
