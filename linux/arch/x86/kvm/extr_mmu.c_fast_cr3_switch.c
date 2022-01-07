
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union kvm_mmu_page_role {int dummy; } kvm_mmu_page_role ;
struct TYPE_3__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu {scalar_t__ shadow_root_level; scalar_t__ root_level; int root_hpa; } ;
typedef int gpa_t ;
struct TYPE_4__ {int (* tlb_flush ) (struct kvm_vcpu*,int) ;} ;


 int KVM_REQ_LOAD_CR3 ;
 int KVM_REQ_MMU_SYNC ;
 int MMIO_GVA_ANY ;
 int PAGE_SHIFT ;
 scalar_t__ PT64_ROOT_4LEVEL ;
 int __clear_sp_write_flooding_count (int ) ;
 scalar_t__ cached_root_available (struct kvm_vcpu*,int,union kvm_mmu_page_role) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 scalar_t__ mmu_check_root (struct kvm_vcpu*,int) ;
 int page_header (int ) ;
 int stub1 (struct kvm_vcpu*,int) ;
 int vcpu_clear_mmio_info (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool fast_cr3_switch(struct kvm_vcpu *vcpu, gpa_t new_cr3,
       union kvm_mmu_page_role new_role,
       bool skip_tlb_flush)
{
 struct kvm_mmu *mmu = vcpu->arch.mmu;






 if (mmu->shadow_root_level >= PT64_ROOT_4LEVEL &&
     mmu->root_level >= PT64_ROOT_4LEVEL) {
  if (mmu_check_root(vcpu, new_cr3 >> PAGE_SHIFT))
   return 0;

  if (cached_root_available(vcpu, new_cr3, new_role)) {







   kvm_make_request(KVM_REQ_LOAD_CR3, vcpu);
   if (!skip_tlb_flush) {
    kvm_make_request(KVM_REQ_MMU_SYNC, vcpu);
    kvm_x86_ops->tlb_flush(vcpu, 1);
   }
   vcpu_clear_mmio_info(vcpu, MMIO_GVA_ANY);

   __clear_sp_write_flooding_count(
    page_header(mmu->root_hpa));

   return 1;
  }
 }

 return 0;
}
