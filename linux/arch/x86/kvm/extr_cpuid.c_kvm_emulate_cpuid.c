
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ cpuid_fault_enabled (struct kvm_vcpu*) ;
 int kvm_cpuid (struct kvm_vcpu*,int *,int *,int *,int *,int) ;
 int kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_rax_write (struct kvm_vcpu*,int ) ;
 int kvm_rbx_write (struct kvm_vcpu*,int ) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 int kvm_rcx_write (struct kvm_vcpu*,int ) ;
 int kvm_rdx_write (struct kvm_vcpu*,int ) ;
 int kvm_require_cpl (struct kvm_vcpu*,int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;

int kvm_emulate_cpuid(struct kvm_vcpu *vcpu)
{
 u32 eax, ebx, ecx, edx;

 if (cpuid_fault_enabled(vcpu) && !kvm_require_cpl(vcpu, 0))
  return 1;

 eax = kvm_rax_read(vcpu);
 ecx = kvm_rcx_read(vcpu);
 kvm_cpuid(vcpu, &eax, &ebx, &ecx, &edx, 1);
 kvm_rax_write(vcpu, eax);
 kvm_rbx_write(vcpu, ebx);
 kvm_rcx_write(vcpu, ecx);
 kvm_rdx_write(vcpu, edx);
 return kvm_skip_emulated_instruction(vcpu);
}
