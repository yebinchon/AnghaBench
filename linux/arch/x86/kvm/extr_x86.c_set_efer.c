
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct msr_data {int data; int host_initiated; } ;
struct TYPE_3__ {int efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* set_efer ) (struct kvm_vcpu*,int) ;} ;


 int EFER_LMA ;
 int EFER_LME ;
 int EFER_NX ;
 int __kvm_valid_efer (struct kvm_vcpu*,int) ;
 int efer_reserved_bits ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 int kvm_mmu_reset_context (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;

__attribute__((used)) static int set_efer(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
 u64 old_efer = vcpu->arch.efer;
 u64 efer = msr_info->data;

 if (efer & efer_reserved_bits)
  return 1;

 if (!msr_info->host_initiated) {
  if (!__kvm_valid_efer(vcpu, efer))
   return 1;

  if (is_paging(vcpu) &&
      (vcpu->arch.efer & EFER_LME) != (efer & EFER_LME))
   return 1;
 }

 efer &= ~EFER_LMA;
 efer |= vcpu->arch.efer & EFER_LMA;

 kvm_x86_ops->set_efer(vcpu, efer);


 if ((efer ^ old_efer) & EFER_NX)
  kvm_mmu_reset_context(vcpu);

 return 0;
}
