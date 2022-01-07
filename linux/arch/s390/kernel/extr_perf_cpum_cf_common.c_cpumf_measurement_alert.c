
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_code {int dummy; } ;
struct cpu_cf_events {int flags; int alert; int info; } ;


 unsigned int CPU_MF_INT_CF_CACA ;
 unsigned int CPU_MF_INT_CF_LCDA ;
 unsigned int CPU_MF_INT_CF_MASK ;
 unsigned int CPU_MF_INT_CF_MTDA ;
 int IRQEXT_CMC ;
 int PMU_F_RESERVED ;
 int atomic64_or (unsigned int,int *) ;
 int cpu_cf_events ;
 int inc_irq_stat (int ) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ) ;
 int qctri (int *) ;
 int smp_processor_id () ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_measurement_alert(struct ext_code ext_code,
        unsigned int alert, unsigned long unused)
{
 struct cpu_cf_events *cpuhw;

 if (!(alert & CPU_MF_INT_CF_MASK))
  return;

 inc_irq_stat(IRQEXT_CMC);
 cpuhw = this_cpu_ptr(&cpu_cf_events);



 if (!(cpuhw->flags & PMU_F_RESERVED))
  return;


 if (alert & CPU_MF_INT_CF_CACA)
  qctri(&cpuhw->info);


 if (alert & CPU_MF_INT_CF_LCDA)
  pr_err("CPU[%i] Counter data was lost\n", smp_processor_id());


 if (alert & CPU_MF_INT_CF_MTDA)
  pr_warn("CPU[%i] MT counter data was lost\n",
   smp_processor_id());


 atomic64_or(alert, &cpuhw->alert);
}
