
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cbe_pmd_shadow_regs {scalar_t__ counter_value_in_latch; } ;


 int CBE_PM_ENABLE_PERF_MON ;
 struct cbe_pmd_shadow_regs* cbe_get_cpu_pmd_shadow_regs (int) ;
 int cbe_read_pm (int,int ) ;
 int cbe_write_pm (int,int ,int) ;
 int pm_control ;

void cbe_enable_pm(u32 cpu)
{
 struct cbe_pmd_shadow_regs *shadow_regs;
 u32 pm_ctrl;

 shadow_regs = cbe_get_cpu_pmd_shadow_regs(cpu);
 shadow_regs->counter_value_in_latch = 0;

 pm_ctrl = cbe_read_pm(cpu, pm_control) | CBE_PM_ENABLE_PERF_MON;
 cbe_write_pm(cpu, pm_control, pm_ctrl);
}
