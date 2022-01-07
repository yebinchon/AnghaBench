
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; struct kvm_run* run; } ;
struct kvm_run {int if_flag; int ready_for_interrupt_injection; int apic_base; int cr8; int flags; } ;


 int KVM_RUN_X86_SMM ;
 int X86_EFLAGS_IF ;
 scalar_t__ is_smm (struct kvm_vcpu*) ;
 int kvm_get_apic_base (struct kvm_vcpu*) ;
 int kvm_get_cr8 (struct kvm_vcpu*) ;
 int kvm_get_rflags (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_ready_for_interrupt_injection (struct kvm_vcpu*) ;
 scalar_t__ pic_in_kernel (int ) ;

__attribute__((used)) static void post_kvm_run_save(struct kvm_vcpu *vcpu)
{
 struct kvm_run *kvm_run = vcpu->run;

 kvm_run->if_flag = (kvm_get_rflags(vcpu) & X86_EFLAGS_IF) != 0;
 kvm_run->flags = is_smm(vcpu) ? KVM_RUN_X86_SMM : 0;
 kvm_run->cr8 = kvm_get_cr8(vcpu);
 kvm_run->apic_base = kvm_get_apic_base(vcpu);
 kvm_run->ready_for_interrupt_injection =
  pic_in_kernel(vcpu->kvm) ||
  kvm_vcpu_ready_for_interrupt_injection(vcpu);
}
