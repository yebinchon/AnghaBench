
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msr_platform_info; int arch_capabilities; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MSR_PLATFORM_INFO_CPUID_FAULT ;
 int kvm_get_arch_capabilities () ;
 int kvm_init_mmu (struct kvm_vcpu*,int) ;
 int kvm_vcpu_mtrr_init (struct kvm_vcpu*) ;
 int kvm_vcpu_reset (struct kvm_vcpu*,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
{
 vcpu->arch.arch_capabilities = kvm_get_arch_capabilities();
 vcpu->arch.msr_platform_info = MSR_PLATFORM_INFO_CPUID_FAULT;
 kvm_vcpu_mtrr_init(vcpu);
 vcpu_load(vcpu);
 kvm_vcpu_reset(vcpu, 0);
 kvm_init_mmu(vcpu, 0);
 vcpu_put(vcpu);
 return 0;
}
