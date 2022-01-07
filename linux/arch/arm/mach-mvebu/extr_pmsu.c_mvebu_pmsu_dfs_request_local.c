
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PMSU_CONTROL_AND_CONFIG (int) ;
 int PMSU_CONTROL_AND_CONFIG_DFS_REQ ;
 scalar_t__ PMSU_STATUS_AND_MASK (int) ;
 int PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT ;
 int PMSU_STATUS_AND_MASK_FIQ_MASK ;
 int PMSU_STATUS_AND_MASK_IRQ_MASK ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ pmsu_mp_base ;
 int readl (scalar_t__) ;
 int smp_processor_id () ;
 int wfi () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mvebu_pmsu_dfs_request_local(void *data)
{
 u32 reg;
 u32 cpu = smp_processor_id();
 unsigned long flags;

 local_irq_save(flags);


 reg = readl(pmsu_mp_base + PMSU_STATUS_AND_MASK(cpu));
 reg |= PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT |
        PMSU_STATUS_AND_MASK_IRQ_MASK |
        PMSU_STATUS_AND_MASK_FIQ_MASK;
 writel(reg, pmsu_mp_base + PMSU_STATUS_AND_MASK(cpu));


 reg = readl(pmsu_mp_base + PMSU_CONTROL_AND_CONFIG(cpu));
 reg |= PMSU_CONTROL_AND_CONFIG_DFS_REQ;
 writel(reg, pmsu_mp_base + PMSU_CONTROL_AND_CONFIG(cpu));


 wfi();





 reg = readl(pmsu_mp_base + PMSU_STATUS_AND_MASK(cpu));
 reg &= ~PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT;
 writel(reg, pmsu_mp_base + PMSU_STATUS_AND_MASK(cpu));

 local_irq_restore(flags);
}
