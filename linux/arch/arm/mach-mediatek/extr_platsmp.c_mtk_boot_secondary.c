
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__* core_regs; int * core_keys; } ;


 int EINVAL ;
 int arch_send_wakeup_ipi_mask (int ) ;
 int cpumask_of (unsigned int) ;
 scalar_t__ mtk_smp_base ;
 TYPE_1__* mtk_smp_info ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int mtk_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 if (!mtk_smp_base)
  return -EINVAL;

 if (!mtk_smp_info->core_keys[cpu-1])
  return -EINVAL;

 writel_relaxed(mtk_smp_info->core_keys[cpu-1],
  mtk_smp_base + mtk_smp_info->core_regs[cpu-1]);

 arch_send_wakeup_ipi_mask(cpumask_of(cpu));

 return 0;
}
