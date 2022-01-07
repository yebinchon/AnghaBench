
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idle_statedata {scalar_t__ mpu_state_vote; int cpu_state; int mpu_state; int mpu_logic_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int cpu; } ;


 int PWRDM_POWER_ON ;
 int mpu_lock ;
 int mpu_pd ;
 scalar_t__ num_online_cpus () ;
 int omap4_enter_lowpower (int ,int ) ;
 int omap_set_pwrdm_state (int ,int ) ;
 int pwrdm_set_logic_retst (int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct idle_statedata* state_ptr ;

__attribute__((used)) static int omap_enter_idle_smp(struct cpuidle_device *dev,
          struct cpuidle_driver *drv,
          int index)
{
 struct idle_statedata *cx = state_ptr + index;
 unsigned long flag;

 raw_spin_lock_irqsave(&mpu_lock, flag);
 cx->mpu_state_vote++;
 if (cx->mpu_state_vote == num_online_cpus()) {
  pwrdm_set_logic_retst(mpu_pd, cx->mpu_logic_state);
  omap_set_pwrdm_state(mpu_pd, cx->mpu_state);
 }
 raw_spin_unlock_irqrestore(&mpu_lock, flag);

 omap4_enter_lowpower(dev->cpu, cx->cpu_state);

 raw_spin_lock_irqsave(&mpu_lock, flag);
 if (cx->mpu_state_vote == num_online_cpus())
  omap_set_pwrdm_state(mpu_pd, PWRDM_POWER_ON);
 cx->mpu_state_vote--;
 raw_spin_unlock_irqrestore(&mpu_lock, flag);

 return index;
}
