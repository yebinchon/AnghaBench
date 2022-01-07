
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int cpu_do_idle () ;
 int davinci_save_ddr_power (int,int ) ;
 int ddr2_pdown ;

__attribute__((used)) static int davinci_enter_idle(struct cpuidle_device *dev,
         struct cpuidle_driver *drv, int index)
{
 davinci_save_ddr_power(1, ddr2_pdown);
 cpu_do_idle();
 davinci_save_ddr_power(0, ddr2_pdown);

 return index;
}
