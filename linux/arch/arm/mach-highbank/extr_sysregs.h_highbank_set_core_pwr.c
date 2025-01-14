
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPIDR_AFFINITY_LEVEL (int ,int ) ;
 int SCU_PM_POWEROFF ;
 scalar_t__ SREG_CPU_PWR_CTRL (int) ;
 int cpu_logical_map (int ) ;
 scalar_t__ scu_base_addr ;
 int scu_power_mode (scalar_t__,int ) ;
 int smp_processor_id () ;
 scalar_t__ sregs_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void highbank_set_core_pwr(void)
{
 int cpu = MPIDR_AFFINITY_LEVEL(cpu_logical_map(smp_processor_id()), 0);
 if (scu_base_addr)
  scu_power_mode(scu_base_addr, SCU_PM_POWEROFF);
 else
  writel_relaxed(1, sregs_base + SREG_CPU_PWR_CTRL(cpu));
}
