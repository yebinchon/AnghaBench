
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int arch_send_wakeup_ipi_mask (int ) ;
 int armada_xp_secondary_startup ;
 int cpu_logical_map (unsigned int) ;
 int cpumask_of (unsigned int) ;
 int mvebu_cpu_reset_deassert (int) ;
 int mvebu_pmsu_set_cpu_boot_addr (int,int ) ;
 int pr_info (char*,unsigned int) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int armada_xp_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 int ret, hw_cpu;

 pr_info("Booting CPU %d\n", cpu);

 hw_cpu = cpu_logical_map(cpu);
 mvebu_pmsu_set_cpu_boot_addr(hw_cpu, armada_xp_secondary_startup);





 arch_send_wakeup_ipi_mask(cpumask_of(cpu));





 ret = mvebu_cpu_reset_deassert(hw_cpu);
 if (ret) {
  pr_warn("unable to boot CPU: %d\n", ret);
  return ret;
 }

 return 0;
}
