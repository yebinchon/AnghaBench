
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; int gfn; } ;


 int KVM_PAGES_PER_HPAGE (int ) ;
 scalar_t__ __drop_large_spte (int ,int *) ;
 int __pa (int *) ;
 int kvm_flush_remote_tlbs_with_address (int ,int ,int ) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void drop_large_spte(struct kvm_vcpu *vcpu, u64 *sptep)
{
 if (__drop_large_spte(vcpu->kvm, sptep)) {
  struct kvm_mmu_page *sp = page_header(__pa(sptep));

  kvm_flush_remote_tlbs_with_address(vcpu->kvm, sp->gfn,
   KVM_PAGES_PER_HPAGE(sp->role.level));
 }
}
