
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int BUG () ;
 int KVM_SPSR_ABT ;
 int KVM_SPSR_FIQ ;
 int KVM_SPSR_IRQ ;
 int KVM_SPSR_SVC ;
 int KVM_SPSR_UND ;



 unsigned long PSR_AA32_MODE_MASK ;


 unsigned long* vcpu_cpsr (struct kvm_vcpu const*) ;

__attribute__((used)) static int vcpu_spsr32_mode(const struct kvm_vcpu *vcpu)
{
 unsigned long mode = *vcpu_cpsr(vcpu) & PSR_AA32_MODE_MASK;
 switch (mode) {
 case 129: return KVM_SPSR_SVC;
 case 132: return KVM_SPSR_ABT;
 case 128: return KVM_SPSR_UND;
 case 130: return KVM_SPSR_IRQ;
 case 131: return KVM_SPSR_FIQ;
 default: BUG();
 }
}
