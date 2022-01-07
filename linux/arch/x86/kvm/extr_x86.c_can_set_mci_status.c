
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msr_hwcr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BIT_ULL (int) ;
 scalar_t__ guest_cpuid_is_amd (struct kvm_vcpu*) ;

__attribute__((used)) static bool can_set_mci_status(struct kvm_vcpu *vcpu)
{

 if (guest_cpuid_is_amd(vcpu))
  return !!(vcpu->arch.msr_hwcr & BIT_ULL(18));

 return 0;
}
