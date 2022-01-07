
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct cpu_hw_events {struct perf_event** event; } ;
struct TYPE_2__ {int n_counter; } ;


 int MSR_PMM ;
 int PMGC0_FCECE ;
 int PMGC0_PMIE ;
 int PMRN_PMGC0 ;
 int cpu_hw_events ;
 int irq_enter () ;
 int irq_exit () ;
 int isync () ;
 int mfmsr () ;
 int mtmsr (int) ;
 int mtpmr (int ,int) ;
 int nmi_enter () ;
 int nmi_exit () ;
 int perf_intr_is_nmi (struct pt_regs*) ;
 TYPE_1__* ppmu ;
 unsigned long read_pmc (int) ;
 int record_and_restart (struct perf_event*,unsigned long,struct pt_regs*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int write_pmc (int,int ) ;

__attribute__((used)) static void perf_event_interrupt(struct pt_regs *regs)
{
 int i;
 struct cpu_hw_events *cpuhw = this_cpu_ptr(&cpu_hw_events);
 struct perf_event *event;
 unsigned long val;
 int found = 0;
 int nmi;

 nmi = perf_intr_is_nmi(regs);
 if (nmi)
  nmi_enter();
 else
  irq_enter();

 for (i = 0; i < ppmu->n_counter; ++i) {
  event = cpuhw->event[i];

  val = read_pmc(i);
  if ((int)val < 0) {
   if (event) {

    found = 1;
    record_and_restart(event, val, regs);
   } else {




    write_pmc(i, 0);
   }
  }
 }


 mtmsr(mfmsr() | MSR_PMM);
 mtpmr(PMRN_PMGC0, PMGC0_PMIE | PMGC0_FCECE);
 isync();

 if (nmi)
  nmi_exit();
 else
  irq_exit();
}
