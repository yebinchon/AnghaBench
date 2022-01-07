
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore_type {int num_shared_regs; } ;
struct intel_uncore_extra_reg {int dummy; } ;
struct intel_uncore_box {int cpu; int pci_phys_id; int dieid; int active_list; int hrtimer_duration; TYPE_1__* shared_regs; } ;
struct TYPE_2__ {int lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UNCORE_PMU_HRTIMER_INTERVAL ;
 struct intel_uncore_box* kzalloc_node (int,int ,int) ;
 int raw_spin_lock_init (int *) ;
 int uncore_pmu_init_hrtimer (struct intel_uncore_box*) ;

__attribute__((used)) static struct intel_uncore_box *uncore_alloc_box(struct intel_uncore_type *type,
       int node)
{
 int i, size, numshared = type->num_shared_regs ;
 struct intel_uncore_box *box;

 size = sizeof(*box) + numshared * sizeof(struct intel_uncore_extra_reg);

 box = kzalloc_node(size, GFP_KERNEL, node);
 if (!box)
  return ((void*)0);

 for (i = 0; i < numshared; i++)
  raw_spin_lock_init(&box->shared_regs[i].lock);

 uncore_pmu_init_hrtimer(box);
 box->cpu = -1;
 box->pci_phys_id = -1;
 box->dieid = -1;


 box->hrtimer_duration = UNCORE_PMU_HRTIMER_INTERVAL;

 INIT_LIST_HEAD(&box->active_list);

 return box;
}
