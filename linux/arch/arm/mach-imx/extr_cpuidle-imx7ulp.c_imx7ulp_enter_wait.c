
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int ULP_PM_RUN ;
 int ULP_PM_STOP ;
 int ULP_PM_WAIT ;
 int cpu_do_idle () ;
 int imx7ulp_set_lpm (int ) ;

__attribute__((used)) static int imx7ulp_enter_wait(struct cpuidle_device *dev,
       struct cpuidle_driver *drv, int index)
{
 if (index == 1)
  imx7ulp_set_lpm(ULP_PM_WAIT);
 else
  imx7ulp_set_lpm(ULP_PM_STOP);

 cpu_do_idle();

 imx7ulp_set_lpm(ULP_PM_RUN);

 return index;
}
