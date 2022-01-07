
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int mode; TYPE_1__* run; } ;
struct TYPE_2__ {int exit_reason; } ;


 int EINTR ;
 int IN_GUEST_MODE ;
 int KVM_EXIT_INTR ;
 int SIGNAL_EXITS ;
 int WARN_ON (int ) ;
 int cond_resched () ;
 int current ;
 int guest_enter_irqoff () ;
 int hard_irq_disable () ;
 int irqs_disabled () ;
 scalar_t__ kvm_request_pending (struct kvm_vcpu*) ;
 int kvmppc_account_exit (struct kvm_vcpu*,int ) ;
 int kvmppc_core_check_requests (struct kvm_vcpu*) ;
 scalar_t__ kvmppc_core_prepare_to_enter (struct kvm_vcpu*) ;
 int local_irq_enable () ;
 scalar_t__ need_resched () ;
 scalar_t__ signal_pending (int ) ;
 int smp_mb () ;
 int trace_kvm_check_requests (struct kvm_vcpu*) ;

int kvmppc_prepare_to_enter(struct kvm_vcpu *vcpu)
{
 int r;

 WARN_ON(irqs_disabled());
 hard_irq_disable();

 while (1) {
  if (need_resched()) {
   local_irq_enable();
   cond_resched();
   hard_irq_disable();
   continue;
  }

  if (signal_pending(current)) {
   kvmppc_account_exit(vcpu, SIGNAL_EXITS);
   vcpu->run->exit_reason = KVM_EXIT_INTR;
   r = -EINTR;
   break;
  }

  vcpu->mode = IN_GUEST_MODE;
  smp_mb();

  if (kvm_request_pending(vcpu)) {

   local_irq_enable();
   trace_kvm_check_requests(vcpu);
   r = kvmppc_core_check_requests(vcpu);
   hard_irq_disable();
   if (r > 0)
    continue;
   break;
  }

  if (kvmppc_core_prepare_to_enter(vcpu)) {


   continue;
  }

  guest_enter_irqoff();
  return 1;
 }


 local_irq_enable();
 return r;
}
