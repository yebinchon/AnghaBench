
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext_code {int dummy; } ;
struct cpu_hw_sf {int flags; int qsi; TYPE_1__* event; } ;
struct TYPE_2__ {int hw; } ;


 unsigned int CPU_MF_INT_SF_IAE ;
 unsigned int CPU_MF_INT_SF_ISE ;
 unsigned int CPU_MF_INT_SF_LSDA ;
 unsigned int CPU_MF_INT_SF_MASK ;
 unsigned int CPU_MF_INT_SF_PRA ;
 unsigned int CPU_MF_INT_SF_SACA ;
 int IRQEXT_CMS ;
 int PMU_F_ERR_IBE ;
 int PMU_F_ERR_LSDA ;
 int PMU_F_IN_USE ;
 int PMU_F_RESERVED ;
 scalar_t__ SAMPL_DIAG_MODE (int *) ;
 int WARN_ON_ONCE (int) ;
 int cpu_hw_sf ;
 int debug_sprintf_event (int ,int,char*,unsigned int) ;
 int hw_collect_aux (struct cpu_hw_sf*) ;
 int hw_perf_event_update (TYPE_1__*,int ) ;
 int inc_irq_stat (int ) ;
 int pr_err (char*,...) ;
 int qsi (int *) ;
 int sf_disable () ;
 int sfdbg ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_measurement_alert(struct ext_code ext_code,
        unsigned int alert, unsigned long unused)
{
 struct cpu_hw_sf *cpuhw;

 if (!(alert & CPU_MF_INT_SF_MASK))
  return;
 inc_irq_stat(IRQEXT_CMS);
 cpuhw = this_cpu_ptr(&cpu_hw_sf);



 if (!(cpuhw->flags & PMU_F_RESERVED))
  return;





 if (alert & CPU_MF_INT_SF_PRA) {
  if (cpuhw->flags & PMU_F_IN_USE)
   if (SAMPL_DIAG_MODE(&cpuhw->event->hw))
    hw_collect_aux(cpuhw);
   else
    hw_perf_event_update(cpuhw->event, 0);
  else
   WARN_ON_ONCE(!(cpuhw->flags & PMU_F_IN_USE));
 }


 if (alert != CPU_MF_INT_SF_PRA)
  debug_sprintf_event(sfdbg, 6, "measurement alert: %#x\n",
        alert);


 if (alert & CPU_MF_INT_SF_SACA)
  qsi(&cpuhw->qsi);


 if (alert & CPU_MF_INT_SF_LSDA) {
  pr_err("Sample data was lost\n");
  cpuhw->flags |= PMU_F_ERR_LSDA;
  sf_disable();
 }


 if (alert & (CPU_MF_INT_SF_IAE|CPU_MF_INT_SF_ISE)) {
  pr_err("A sampling buffer entry is incorrect (alert=0x%x)\n",
         alert);
  cpuhw->flags |= PMU_F_ERR_IBE;
  sf_disable();
 }
}
