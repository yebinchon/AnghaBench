
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int mm; } ;


 int BUG_ON (int) ;
 int CPACR_EL1_ZEN_EL0EN ;
 int KVM_ARM64_FP_ENABLED ;
 int KVM_ARM64_FP_HOST ;
 int KVM_ARM64_HOST_SVE_ENABLED ;
 int KVM_ARM64_HOST_SVE_IN_USE ;
 int TIF_SVE ;
 int cpacr_el1 ;
 TYPE_2__* current ;
 int read_sysreg (int ) ;
 scalar_t__ test_thread_flag (int ) ;

void kvm_arch_vcpu_load_fp(struct kvm_vcpu *vcpu)
{
 BUG_ON(!current->mm);

 vcpu->arch.flags &= ~(KVM_ARM64_FP_ENABLED |
         KVM_ARM64_HOST_SVE_IN_USE |
         KVM_ARM64_HOST_SVE_ENABLED);
 vcpu->arch.flags |= KVM_ARM64_FP_HOST;

 if (test_thread_flag(TIF_SVE))
  vcpu->arch.flags |= KVM_ARM64_HOST_SVE_IN_USE;

 if (read_sysreg(cpacr_el1) & CPACR_EL1_ZEN_EL0EN)
  vcpu->arch.flags |= KVM_ARM64_HOST_SVE_ENABLED;
}
