
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idle_statedata {scalar_t__ mpu_state; scalar_t__ mpu_logic_state; int cpu_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {size_t cpu; } ;


 scalar_t__ IS_PM44XX_ERRATUM (int ) ;
 int PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD ;
 scalar_t__ PWRDM_POWER_OFF ;
 scalar_t__ PWRDM_POWER_ON ;
 scalar_t__ PWRDM_POWER_RET ;
 int abort_barrier ;
 int clkdm_allow_idle (int ) ;
 int clkdm_deny_idle (int ) ;
 int * cpu_clkdm ;
 int cpu_cluster_pm_enter () ;
 int cpu_cluster_pm_exit () ;
 int* cpu_done ;
 int cpu_online_mask ;
 int * cpu_pd ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_relax () ;
 int cpuidle_coupled_parallel_barrier (struct cpuidle_device*,int *) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 int gic_dist_disable () ;
 scalar_t__ gic_dist_disabled () ;
 int gic_timer_retrigger () ;
 int mpu_pd ;
 int omap4_enter_lowpower (size_t,int ) ;
 int omap_set_pwrdm_state (int ,scalar_t__) ;
 scalar_t__ pwrdm_read_pwrst (int ) ;
 int pwrdm_set_logic_retst (int ,scalar_t__) ;
 struct idle_statedata* state_ptr ;
 int tick_broadcast_enable () ;
 int tick_broadcast_enter () ;
 int tick_broadcast_exit () ;
 int udelay (int) ;

__attribute__((used)) static int omap_enter_idle_coupled(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
   int index)
{
 struct idle_statedata *cx = state_ptr + index;
 u32 mpuss_can_lose_context = 0;







 if (dev->cpu == 0 && cpumask_test_cpu(1, cpu_online_mask)) {
  while (pwrdm_read_pwrst(cpu_pd[1]) != PWRDM_POWER_OFF) {
   cpu_relax();
   if (cpu_done[1])
       goto fail;

  }
 }

 mpuss_can_lose_context = (cx->mpu_state == PWRDM_POWER_RET) &&
     (cx->mpu_logic_state == PWRDM_POWER_OFF);


 tick_broadcast_enable();


 tick_broadcast_enter();





 cpu_pm_enter();

 if (dev->cpu == 0) {
  pwrdm_set_logic_retst(mpu_pd, cx->mpu_logic_state);
  omap_set_pwrdm_state(mpu_pd, cx->mpu_state);





  if (mpuss_can_lose_context)
   cpu_cluster_pm_enter();
 }

 omap4_enter_lowpower(dev->cpu, cx->cpu_state);
 cpu_done[dev->cpu] = 1;


 if (dev->cpu == 0 && cpumask_test_cpu(1, cpu_online_mask)) {

  if (IS_PM44XX_ERRATUM(PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD) &&
      mpuss_can_lose_context)
   gic_dist_disable();

  clkdm_deny_idle(cpu_clkdm[1]);
  omap_set_pwrdm_state(cpu_pd[1], PWRDM_POWER_ON);
  clkdm_allow_idle(cpu_clkdm[1]);

  if (IS_PM44XX_ERRATUM(PM_OMAP4_ROM_SMP_BOOT_ERRATUM_GICD) &&
      mpuss_can_lose_context) {
   while (gic_dist_disabled()) {
    udelay(1);
    cpu_relax();
   }
   gic_timer_retrigger();
  }
 }





 cpu_pm_exit();





 if (dev->cpu == 0 && mpuss_can_lose_context)
  cpu_cluster_pm_exit();

 tick_broadcast_exit();

fail:
 cpuidle_coupled_parallel_barrier(dev, &abort_barrier);
 cpu_done[dev->cpu] = 0;

 return index;
}
