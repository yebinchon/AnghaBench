
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMSU_CONTROL_AND_CONFIG (unsigned int) ;
 int PMSU_CONTROL_AND_CONFIG_L2_PWDDN ;
 int PMSU_STATUS_AND_MASK (unsigned int) ;
 int PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT ;
 int PMSU_STATUS_AND_MASK_FIQ_MASK ;
 int PMSU_STATUS_AND_MASK_FIQ_WAKEUP ;
 int PMSU_STATUS_AND_MASK_IRQ_MASK ;
 int PMSU_STATUS_AND_MASK_IRQ_WAKEUP ;
 int PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT ;
 unsigned int cpu_logical_map (int ) ;
 int * pmsu_mp_base ;
 int readl (int *) ;
 int smp_processor_id () ;
 int writel (int,int *) ;

void mvebu_v7_pmsu_idle_exit(void)
{
 unsigned int hw_cpu = cpu_logical_map(smp_processor_id());
 u32 reg;

 if (pmsu_mp_base == ((void*)0))
  return;

 reg = readl(pmsu_mp_base + PMSU_CONTROL_AND_CONFIG(hw_cpu));
 reg &= ~PMSU_CONTROL_AND_CONFIG_L2_PWDDN;
 writel(reg, pmsu_mp_base + PMSU_CONTROL_AND_CONFIG(hw_cpu));


 reg = readl(pmsu_mp_base + PMSU_STATUS_AND_MASK(hw_cpu));
 reg &= ~(PMSU_STATUS_AND_MASK_IRQ_WAKEUP | PMSU_STATUS_AND_MASK_FIQ_WAKEUP);
 reg &= ~PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT;
 reg &= ~PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT;
 reg &= ~(PMSU_STATUS_AND_MASK_IRQ_MASK | PMSU_STATUS_AND_MASK_FIQ_MASK);
 writel(reg, pmsu_mp_base + PMSU_STATUS_AND_MASK(hw_cpu));
}
