
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_shared_regs {int core_id; scalar_t__ refcnt; } ;
struct cpu_hw_events {struct intel_shared_regs* shared_regs; } ;


 int free_excl_cntrs (struct cpu_hw_events*) ;
 int kfree (struct intel_shared_regs*) ;

void intel_cpuc_finish(struct cpu_hw_events *cpuc)
{
 struct intel_shared_regs *pc;

 pc = cpuc->shared_regs;
 if (pc) {
  if (pc->core_id == -1 || --pc->refcnt == 0)
   kfree(pc);
  cpuc->shared_regs = ((void*)0);
 }

 free_excl_cntrs(cpuc);
}
