
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_rmap_head {int dummy; } ;
struct kvm_mmu_page {int spt; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 int __pa (int *) ;
 int __pte_list_remove (int *,struct kvm_rmap_head*) ;
 struct kvm_rmap_head* gfn_to_rmap (struct kvm*,int ,struct kvm_mmu_page*) ;
 int kvm_mmu_page_get_gfn (struct kvm_mmu_page*,int *) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void rmap_remove(struct kvm *kvm, u64 *spte)
{
 struct kvm_mmu_page *sp;
 gfn_t gfn;
 struct kvm_rmap_head *rmap_head;

 sp = page_header(__pa(spte));
 gfn = kvm_mmu_page_get_gfn(sp, spte - sp->spt);
 rmap_head = gfn_to_rmap(kvm, gfn, sp);
 __pte_list_remove(spte, rmap_head);
}
