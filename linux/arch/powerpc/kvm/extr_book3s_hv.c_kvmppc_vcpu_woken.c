
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prodded; scalar_t__ pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ kvmppc_doorbell_pending (struct kvm_vcpu*) ;
 scalar_t__ xive_interrupt_pending (struct kvm_vcpu*) ;

__attribute__((used)) static bool kvmppc_vcpu_woken(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.pending_exceptions || vcpu->arch.prodded ||
     kvmppc_doorbell_pending(vcpu) || xive_interrupt_pending(vcpu))
  return 1;

 return 0;
}
