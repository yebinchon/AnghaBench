
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENOSYS ;
 int HZ ;
 int arch_send_wakeup_ipi_mask (int ) ;
 int cpu_logical_map (unsigned int) ;
 int cpumask_of (unsigned int) ;
 int jiffies ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int smp_rmb () ;
 scalar_t__ time_before (int,unsigned long) ;
 int udelay (int) ;
 int versatile_cpu_release ;
 int versatile_lock ;
 int versatile_write_cpu_release (int ) ;

int versatile_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 unsigned long timeout;





 raw_spin_lock(&versatile_lock);







 versatile_write_cpu_release(cpu_logical_map(cpu));






 arch_send_wakeup_ipi_mask(cpumask_of(cpu));

 timeout = jiffies + (1 * HZ);
 while (time_before(jiffies, timeout)) {
  smp_rmb();
  if (versatile_cpu_release == -1)
   break;

  udelay(10);
 }





 raw_spin_unlock(&versatile_lock);

 return versatile_cpu_release != -1 ? -ENOSYS : 0;
}
