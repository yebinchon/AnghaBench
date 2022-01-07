
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_rmap_head {int dummy; } ;
struct kvm_mmu_page {int spt; } ;
typedef int gfn_t ;


 int __pa (int *) ;
 struct kvm_rmap_head* gfn_to_rmap (int ,int ,struct kvm_mmu_page*) ;
 int kvm_mmu_page_set_gfn (struct kvm_mmu_page*,int *,int ) ;
 struct kvm_mmu_page* page_header (int ) ;
 int pte_list_add (struct kvm_vcpu*,int *,struct kvm_rmap_head*) ;

__attribute__((used)) static int rmap_add(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
 struct kvm_mmu_page *sp;
 struct kvm_rmap_head *rmap_head;

 sp = page_header(__pa(spte));
 kvm_mmu_page_set_gfn(sp, spte - sp->spt, gfn);
 rmap_head = gfn_to_rmap(vcpu->kvm, gfn, sp);
 return pte_list_add(vcpu, spte, rmap_head);
}
