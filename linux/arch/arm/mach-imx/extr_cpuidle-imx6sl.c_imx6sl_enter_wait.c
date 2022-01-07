
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int WAIT_CLOCKED ;
 int WAIT_UNCLOCKED ;
 int cpu_do_idle () ;
 int imx6_set_lpm (int ) ;
 int imx6sl_set_wait_clk (int) ;

__attribute__((used)) static int imx6sl_enter_wait(struct cpuidle_device *dev,
       struct cpuidle_driver *drv, int index)
{
 imx6_set_lpm(WAIT_UNCLOCKED);




 imx6sl_set_wait_clk(1);
 cpu_do_idle();
 imx6sl_set_wait_clk(0);
 imx6_set_lpm(WAIT_CLOCKED);

 return index;
}
