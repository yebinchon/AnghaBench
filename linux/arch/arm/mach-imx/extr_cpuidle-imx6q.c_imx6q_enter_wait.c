
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int WAIT_CLOCKED ;
 int WAIT_UNCLOCKED ;
 int cpu_do_idle () ;
 int cpuidle_lock ;
 int imx6_set_lpm (int ) ;
 scalar_t__ num_idle_cpus ;
 scalar_t__ num_online_cpus () ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int imx6q_enter_wait(struct cpuidle_device *dev,
       struct cpuidle_driver *drv, int index)
{
 raw_spin_lock(&cpuidle_lock);
 if (++num_idle_cpus == num_online_cpus())
  imx6_set_lpm(WAIT_UNCLOCKED);
 raw_spin_unlock(&cpuidle_lock);

 cpu_do_idle();

 raw_spin_lock(&cpuidle_lock);
 if (num_idle_cpus-- == num_online_cpus())
  imx6_set_lpm(WAIT_CLOCKED);
 raw_spin_unlock(&cpuidle_lock);

 return index;
}
