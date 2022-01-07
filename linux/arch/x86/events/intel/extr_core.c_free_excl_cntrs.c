
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_excl_cntrs {int core_id; scalar_t__ refcnt; } ;
struct cpu_hw_events {struct intel_excl_cntrs* constraint_list; struct intel_excl_cntrs* excl_cntrs; } ;


 int kfree (struct intel_excl_cntrs*) ;

__attribute__((used)) static void free_excl_cntrs(struct cpu_hw_events *cpuc)
{
 struct intel_excl_cntrs *c;

 c = cpuc->excl_cntrs;
 if (c) {
  if (c->core_id == -1 || --c->refcnt == 0)
   kfree(c);
  cpuc->excl_cntrs = ((void*)0);
 }

 kfree(cpuc->constraint_list);
 cpuc->constraint_list = ((void*)0);
}
