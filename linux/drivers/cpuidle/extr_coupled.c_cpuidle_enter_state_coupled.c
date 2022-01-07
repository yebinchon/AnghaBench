
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int safe_state_index; } ;
struct cpuidle_device {int cpu; struct cpuidle_coupled* coupled; } ;
struct cpuidle_coupled {int online_count; int abort_barrier; scalar_t__ prevent; } ;


 int EINVAL ;
 int cpu_relax () ;
 scalar_t__ cpuidle_coupled_any_pokes_pending (struct cpuidle_coupled*) ;
 scalar_t__ cpuidle_coupled_clear_pokes (int ) ;
 int cpuidle_coupled_cpus_ready (struct cpuidle_coupled*) ;
 int cpuidle_coupled_cpus_waiting (struct cpuidle_coupled*) ;
 int cpuidle_coupled_get_state (struct cpuidle_device*,struct cpuidle_coupled*) ;
 int cpuidle_coupled_no_cpus_ready (struct cpuidle_coupled*) ;
 int cpuidle_coupled_parallel_barrier (struct cpuidle_device*,int *) ;
 int cpuidle_coupled_poke_others (int ,struct cpuidle_coupled*) ;
 int cpuidle_coupled_poked ;
 int cpuidle_coupled_set_done (int ,struct cpuidle_coupled*) ;
 int cpuidle_coupled_set_not_ready (struct cpuidle_coupled*) ;
 int cpuidle_coupled_set_not_waiting (int ,struct cpuidle_coupled*) ;
 int cpuidle_coupled_set_ready (struct cpuidle_coupled*) ;
 int cpuidle_coupled_set_waiting (int ,struct cpuidle_coupled*,int) ;
 int cpuidle_enter_state (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 int cpumask_clear_cpu (int ,int *) ;
 int cpumask_set_cpu (int ,int *) ;
 int cpumask_test_cpu (int ,int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ need_resched () ;
 int smp_rmb () ;
 int smp_wmb () ;

int cpuidle_enter_state_coupled(struct cpuidle_device *dev,
  struct cpuidle_driver *drv, int next_state)
{
 int entered_state = -1;
 struct cpuidle_coupled *coupled = dev->coupled;
 int w;

 if (!coupled)
  return -EINVAL;

 while (coupled->prevent) {
  cpuidle_coupled_clear_pokes(dev->cpu);
  if (need_resched()) {
   local_irq_enable();
   return entered_state;
  }
  entered_state = cpuidle_enter_state(dev, drv,
   drv->safe_state_index);
  local_irq_disable();
 }


 smp_rmb();

reset:
 cpumask_clear_cpu(dev->cpu, &cpuidle_coupled_poked);

 w = cpuidle_coupled_set_waiting(dev->cpu, coupled, next_state);







 if (w == coupled->online_count) {
  cpumask_set_cpu(dev->cpu, &cpuidle_coupled_poked);
  cpuidle_coupled_poke_others(dev->cpu, coupled);
 }

retry:
 while (!cpuidle_coupled_cpus_waiting(coupled) ||
   !cpumask_test_cpu(dev->cpu, &cpuidle_coupled_poked)) {
  if (cpuidle_coupled_clear_pokes(dev->cpu))
   continue;

  if (need_resched()) {
   cpuidle_coupled_set_not_waiting(dev->cpu, coupled);
   goto out;
  }

  if (coupled->prevent) {
   cpuidle_coupled_set_not_waiting(dev->cpu, coupled);
   goto out;
  }

  entered_state = cpuidle_enter_state(dev, drv,
   drv->safe_state_index);
  local_irq_disable();
 }

 cpuidle_coupled_clear_pokes(dev->cpu);
 if (need_resched()) {
  cpuidle_coupled_set_not_waiting(dev->cpu, coupled);
  goto out;
 }





 smp_wmb();
 cpuidle_coupled_set_ready(coupled);
 while (!cpuidle_coupled_cpus_ready(coupled)) {

  if (!cpuidle_coupled_cpus_waiting(coupled))
   if (!cpuidle_coupled_set_not_ready(coupled))
    goto retry;

  cpu_relax();
 }




 smp_rmb();
 if (cpuidle_coupled_any_pokes_pending(coupled)) {
  cpuidle_coupled_set_done(dev->cpu, coupled);

  cpuidle_coupled_parallel_barrier(dev, &coupled->abort_barrier);
  goto reset;
 }


 next_state = cpuidle_coupled_get_state(dev, coupled);

 entered_state = cpuidle_enter_state(dev, drv, next_state);

 cpuidle_coupled_set_done(dev->cpu, coupled);

out:
 local_irq_enable();






 while (!cpuidle_coupled_no_cpus_ready(coupled))
  cpu_relax();

 return entered_state;
}
