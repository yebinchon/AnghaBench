
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int root_hpa; } ;


 int VALID_PAGE (int ) ;
 int construct_eptp (struct kvm_vcpu*,int ) ;
 scalar_t__ enable_ept ;
 int enable_vpid ;
 int ept_sync_context (int ) ;
 int vpid_sync_context (int) ;

__attribute__((used)) static inline void __vmx_flush_tlb(struct kvm_vcpu *vcpu, int vpid,
    bool invalidate_gpa)
{
 if (enable_ept && (invalidate_gpa || !enable_vpid)) {
  if (!VALID_PAGE(vcpu->arch.mmu->root_hpa))
   return;
  ept_sync_context(construct_eptp(vcpu,
      vcpu->arch.mmu->root_hpa));
 } else {
  vpid_sync_context(vpid);
 }
}
