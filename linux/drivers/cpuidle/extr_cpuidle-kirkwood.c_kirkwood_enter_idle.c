
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int cpu_do_idle () ;
 int ddr_operation_base ;
 int writel (int,int ) ;

__attribute__((used)) static int kirkwood_enter_idle(struct cpuidle_device *dev,
          struct cpuidle_driver *drv,
          int index)
{
 writel(0x7, ddr_operation_base);
 cpu_do_idle();

 return index;
}
