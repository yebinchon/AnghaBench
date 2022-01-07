
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int PRCMU_AP_IDLE ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int cpu_do_idle () ;
 int master ;
 int master_lock ;
 scalar_t__ num_online_cpus () ;
 scalar_t__ prcmu_copy_gic_settings () ;
 scalar_t__ prcmu_gic_decouple () ;
 scalar_t__ prcmu_gic_pending_irq () ;
 int prcmu_gic_recouple () ;
 int prcmu_is_cpu_in_wfi (int) ;
 scalar_t__ prcmu_pending_irq () ;
 scalar_t__ prcmu_set_power_state (int ,int,int) ;
 int smp_processor_id () ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int ux500_enter_idle(struct cpuidle_device *dev,
       struct cpuidle_driver *drv, int index)
{
 int this_cpu = smp_processor_id();
 bool recouple = 0;

 if (atomic_inc_return(&master) == num_online_cpus()) {



  if (!spin_trylock(&master_lock))
   goto wfi;


  if (prcmu_gic_decouple()) {
   spin_unlock(&master_lock);
   goto out;
  }



  recouple = 1;




  if (!prcmu_is_cpu_in_wfi(this_cpu ? 0 : 1))
   goto out;



  if (prcmu_copy_gic_settings())
   goto out;



  if (prcmu_gic_pending_irq())
   goto out;


  if (prcmu_pending_irq())
   goto out;




  if (prcmu_set_power_state(PRCMU_AP_IDLE, 1, 1))
   goto out;



  recouple = 0;

  spin_unlock(&master_lock);
 }
wfi:
 cpu_do_idle();
out:
 atomic_dec(&master);

 if (recouple) {
  prcmu_gic_recouple();
  spin_unlock(&master_lock);
 }

 return index;
}
