
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int uint32_t ;
struct TYPE_2__ {int magic_page_pa; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
typedef int gpa_t ;


 int KVM_PAM ;
 int MSR_SF ;
 int PAGE_SHIFT ;
 int kvm_is_visible_gfn (int ,int) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool kvmppc_visible_gpa(struct kvm_vcpu *vcpu, gpa_t gpa)
{
 ulong mp_pa = vcpu->arch.magic_page_pa;

 if (!(kvmppc_get_msr(vcpu) & MSR_SF))
  mp_pa = (uint32_t)mp_pa;

 gpa &= ~0xFFFULL;
 if (unlikely(mp_pa) && unlikely((mp_pa & KVM_PAM) == (gpa & KVM_PAM))) {
  return 1;
 }

 return kvm_is_visible_gfn(vcpu->kvm, gpa >> PAGE_SHIFT);
}
