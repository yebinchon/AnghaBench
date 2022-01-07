
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_update {int ptr; int val; } ;
typedef int pte_t ;
struct TYPE_2__ {int maddr; } ;


 int MMU_NORMAL_PT_UPDATE ;
 scalar_t__ PARAVIRT_LAZY_MMU ;
 scalar_t__ paravirt_get_lazy_mode () ;
 int pte_val_ma (int ) ;
 TYPE_1__ virt_to_machine (int *) ;
 int xen_extend_mmu_update (struct mmu_update*) ;
 int xen_mc_batch () ;
 int xen_mc_issue (scalar_t__) ;

__attribute__((used)) static bool xen_batched_set_pte(pte_t *ptep, pte_t pteval)
{
 struct mmu_update u;

 if (paravirt_get_lazy_mode() != PARAVIRT_LAZY_MMU)
  return 0;

 xen_mc_batch();

 u.ptr = virt_to_machine(ptep).maddr | MMU_NORMAL_PT_UPDATE;
 u.val = pte_val_ma(pteval);
 xen_extend_mmu_update(&u);

 xen_mc_issue(PARAVIRT_LAZY_MMU);

 return 1;
}
