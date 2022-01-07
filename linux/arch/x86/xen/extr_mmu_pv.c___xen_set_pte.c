
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_update {int ptr; int val; } ;
typedef int pte_t ;
struct TYPE_2__ {int maddr; } ;


 int DOMID_SELF ;
 int HYPERVISOR_mmu_update (struct mmu_update*,int,int *,int ) ;
 int MMU_NORMAL_PT_UPDATE ;
 int pte_val_ma (int ) ;
 TYPE_1__ virt_to_machine (int *) ;
 int xen_batched_set_pte (int *,int ) ;

__attribute__((used)) static inline void __xen_set_pte(pte_t *ptep, pte_t pteval)
{
 if (!xen_batched_set_pte(ptep, pteval)) {







  struct mmu_update u;

  u.ptr = virt_to_machine(ptep).maddr | MMU_NORMAL_PT_UPDATE;
  u.val = pte_val_ma(pteval);
  HYPERVISOR_mmu_update(&u, 1, ((void*)0), DOMID_SELF);
 }
}
