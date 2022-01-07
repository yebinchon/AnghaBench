
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef scalar_t__ kvm_pfn_t ;
typedef int gfn_t ;


 int EFAULT ;
 scalar_t__ KVM_PFN_ERR_HWPOISON ;
 scalar_t__ KVM_PFN_ERR_RO_FAULT ;
 int RET_PF_EMULATE ;
 int RET_PF_RETRY ;
 int current ;
 int kvm_send_hwpoison_signal (int ,int ) ;
 int kvm_vcpu_gfn_to_hva (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvm_handle_bad_page(struct kvm_vcpu *vcpu, gfn_t gfn, kvm_pfn_t pfn)
{





 if (pfn == KVM_PFN_ERR_RO_FAULT)
  return RET_PF_EMULATE;

 if (pfn == KVM_PFN_ERR_HWPOISON) {
  kvm_send_hwpoison_signal(kvm_vcpu_gfn_to_hva(vcpu, gfn), current);
  return RET_PF_RETRY;
 }

 return -EFAULT;
}
