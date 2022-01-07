
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_rmap_head {int dummy; } ;
struct TYPE_2__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; int gfn; } ;
typedef int gfn_t ;


 int KVM_PAGES_PER_HPAGE (int ) ;
 int __pa (int *) ;
 struct kvm_rmap_head* gfn_to_rmap (int ,int ,struct kvm_mmu_page*) ;
 int kvm_flush_remote_tlbs_with_address (int ,int ,int ) ;
 int kvm_unmap_rmapp (int ,struct kvm_rmap_head*,int *,int ,int ,int ) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void rmap_recycle(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
 struct kvm_rmap_head *rmap_head;
 struct kvm_mmu_page *sp;

 sp = page_header(__pa(spte));

 rmap_head = gfn_to_rmap(vcpu->kvm, gfn, sp);

 kvm_unmap_rmapp(vcpu->kvm, rmap_head, ((void*)0), gfn, sp->role.level, 0);
 kvm_flush_remote_tlbs_with_address(vcpu->kvm, sp->gfn,
   KVM_PAGES_PER_HPAGE(sp->role.level));
}
