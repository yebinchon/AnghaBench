
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int msr; } ;


 int EMULATED_MTMSRWE_EXITS ;
 int KVM_REQ_UNHALT ;
 int MSR_WE ;
 int WARN_ON_ONCE (int) ;
 int hard_irq_disable () ;
 int irqs_disabled () ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 scalar_t__ kvm_request_pending (struct kvm_vcpu*) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int kvmppc_core_check_exceptions (struct kvm_vcpu*) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int ) ;
 int local_irq_enable () ;

int kvmppc_core_prepare_to_enter(struct kvm_vcpu *vcpu)
{
 int r = 0;
 WARN_ON_ONCE(!irqs_disabled());

 kvmppc_core_check_exceptions(vcpu);

 if (kvm_request_pending(vcpu)) {

  return 1;
 }

 if (vcpu->arch.shared->msr & MSR_WE) {
  local_irq_enable();
  kvm_vcpu_block(vcpu);
  kvm_clear_request(KVM_REQ_UNHALT, vcpu);
  hard_irq_disable();

  kvmppc_set_exit_type(vcpu, EMULATED_MTMSRWE_EXITS);
  r = 1;
 };

 return r;
}
