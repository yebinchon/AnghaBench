
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int arch_send_wakeup_ipi_mask (int ) ;
 int cpu_logical_map (unsigned int) ;
 int cpumask_of (unsigned int) ;
 int mvebu_cortex_a9_secondary_startup ;
 int mvebu_cpu_reset_deassert (int) ;
 int mvebu_pmsu_set_cpu_boot_addr (int,int ) ;
 int mvebu_system_controller_set_cpu_boot_addr (int ) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int pr_err (char*,int) ;
 int pr_info (char*,unsigned int) ;
 int smp_wmb () ;

__attribute__((used)) static int mvebu_cortex_a9_boot_secondary(unsigned int cpu,
          struct task_struct *idle)
{
 int ret, hw_cpu;

 pr_info("Booting CPU %d\n", cpu);







 hw_cpu = cpu_logical_map(cpu);
 if (of_machine_is_compatible("marvell,armada375"))
  mvebu_system_controller_set_cpu_boot_addr(mvebu_cortex_a9_secondary_startup);
 else
  mvebu_pmsu_set_cpu_boot_addr(hw_cpu, mvebu_cortex_a9_secondary_startup);
 smp_wmb();





 arch_send_wakeup_ipi_mask(cpumask_of(cpu));

 ret = mvebu_cpu_reset_deassert(hw_cpu);
 if (ret) {
  pr_err("Could not start the secondary CPU: %d\n", ret);
  return ret;
 }

 return 0;
}
