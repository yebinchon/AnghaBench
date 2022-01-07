
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
struct mmu_update {int ptr; int val; } ;
typedef int pte_t ;
struct TYPE_2__ {int maddr; } ;


 int MMU_PT_UPDATE_PRESERVE_AD ;
 int PARAVIRT_LAZY_MMU ;
 int pte_val_ma (int ) ;
 int trace_xen_mmu_ptep_modify_prot_commit (int ,unsigned long,int *,int ) ;
 TYPE_1__ virt_to_machine (int *) ;
 int xen_extend_mmu_update (struct mmu_update*) ;
 int xen_mc_batch () ;
 int xen_mc_issue (int ) ;

void xen_ptep_modify_prot_commit(struct vm_area_struct *vma, unsigned long addr,
     pte_t *ptep, pte_t pte)
{
 struct mmu_update u;

 trace_xen_mmu_ptep_modify_prot_commit(vma->vm_mm, addr, ptep, pte);
 xen_mc_batch();

 u.ptr = virt_to_machine(ptep).maddr | MMU_PT_UPDATE_PRESERVE_AD;
 u.val = pte_val_ma(pte);
 xen_extend_mmu_update(&u);

 xen_mc_issue(PARAVIRT_LAZY_MMU);
}
