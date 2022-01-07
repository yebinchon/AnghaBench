
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int WAIT_CLOCKED ;
 int WAIT_UNCLOCKED ;
 int cpu_cluster_pm_enter () ;
 int cpu_cluster_pm_exit () ;
 int cpu_do_idle () ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_suspend (int ,int ) ;
 int imx6_enable_rbc (int) ;
 int imx6_set_lpm (int ) ;
 int imx6sx_idle_finish ;
 int imx_gpc_set_arm_power_in_lpm (int) ;
 int imx_set_cpu_jump (int ,int ) ;
 int v7_cpu_resume ;

__attribute__((used)) static int imx6sx_enter_wait(struct cpuidle_device *dev,
       struct cpuidle_driver *drv, int index)
{
 imx6_set_lpm(WAIT_UNCLOCKED);

 switch (index) {
 case 1:
  cpu_do_idle();
  break;
 case 2:
  imx6_enable_rbc(1);
  imx_gpc_set_arm_power_in_lpm(1);
  imx_set_cpu_jump(0, v7_cpu_resume);

  cpu_pm_enter();
  cpu_cluster_pm_enter();

  cpu_suspend(0, imx6sx_idle_finish);

  cpu_cluster_pm_exit();
  cpu_pm_exit();
  imx_gpc_set_arm_power_in_lpm(0);
  imx6_enable_rbc(0);
  break;
 default:
  break;
 }

 imx6_set_lpm(WAIT_CLOCKED);

 return index;
}
