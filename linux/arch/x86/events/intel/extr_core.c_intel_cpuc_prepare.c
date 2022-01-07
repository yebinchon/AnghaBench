
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_constraint {int dummy; } ;
struct cpu_hw_events {int * shared_regs; int * constraint_list; scalar_t__ excl_thread_id; int excl_cntrs; int pebs_record_size; } ;
struct TYPE_2__ {int flags; scalar_t__ lbr_sel_map; scalar_t__ extra_regs; int pebs_record_size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMU_FL_EXCL_CNTRS ;
 int PMU_FL_TFA ;
 int X86_PMC_IDX_MAX ;
 int allocate_excl_cntrs (int) ;
 int * allocate_shared_regs (int) ;
 int cpu_to_node (int) ;
 int kfree (int *) ;
 int * kzalloc_node (size_t,int ,int ) ;
 TYPE_1__ x86_pmu ;

int intel_cpuc_prepare(struct cpu_hw_events *cpuc, int cpu)
{
 cpuc->pebs_record_size = x86_pmu.pebs_record_size;

 if (x86_pmu.extra_regs || x86_pmu.lbr_sel_map) {
  cpuc->shared_regs = allocate_shared_regs(cpu);
  if (!cpuc->shared_regs)
   goto err;
 }

 if (x86_pmu.flags & (PMU_FL_EXCL_CNTRS | PMU_FL_TFA)) {
  size_t sz = X86_PMC_IDX_MAX * sizeof(struct event_constraint);

  cpuc->constraint_list = kzalloc_node(sz, GFP_KERNEL, cpu_to_node(cpu));
  if (!cpuc->constraint_list)
   goto err_shared_regs;
 }

 if (x86_pmu.flags & PMU_FL_EXCL_CNTRS) {
  cpuc->excl_cntrs = allocate_excl_cntrs(cpu);
  if (!cpuc->excl_cntrs)
   goto err_constraint_list;

  cpuc->excl_thread_id = 0;
 }

 return 0;

err_constraint_list:
 kfree(cpuc->constraint_list);
 cpuc->constraint_list = ((void*)0);

err_shared_regs:
 kfree(cpuc->shared_regs);
 cpuc->shared_regs = ((void*)0);

err:
 return -ENOMEM;
}
