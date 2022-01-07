
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int signal_exits; int request_irq_exits; } ;
struct TYPE_4__ {int l1tf_flush_l1d; } ;
struct kvm_vcpu {void* srcu_idx; TYPE_3__ stat; TYPE_2__* run; TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {int srcu; } ;
struct TYPE_5__ {int exit_reason; } ;


 int EINTR ;
 int KVM_EXIT_INTR ;
 int KVM_EXIT_IRQ_WINDOW_OPEN ;
 int KVM_REQ_PENDING_TIMER ;
 int cond_resched () ;
 int current ;
 scalar_t__ dm_request_for_irq_injection (struct kvm_vcpu*) ;
 int kvm_check_async_pf_completion (struct kvm_vcpu*) ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_pending_timer (struct kvm_vcpu*) ;
 int kvm_inject_pending_timer_irqs (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_ready_for_interrupt_injection (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_running (struct kvm_vcpu*) ;
 scalar_t__ need_resched () ;
 scalar_t__ signal_pending (int ) ;
 void* srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,void*) ;
 int vcpu_block (struct kvm*,struct kvm_vcpu*) ;
 int vcpu_enter_guest (struct kvm_vcpu*) ;

__attribute__((used)) static int vcpu_run(struct kvm_vcpu *vcpu)
{
 int r;
 struct kvm *kvm = vcpu->kvm;

 vcpu->srcu_idx = srcu_read_lock(&kvm->srcu);
 vcpu->arch.l1tf_flush_l1d = 1;

 for (;;) {
  if (kvm_vcpu_running(vcpu)) {
   r = vcpu_enter_guest(vcpu);
  } else {
   r = vcpu_block(kvm, vcpu);
  }

  if (r <= 0)
   break;

  kvm_clear_request(KVM_REQ_PENDING_TIMER, vcpu);
  if (kvm_cpu_has_pending_timer(vcpu))
   kvm_inject_pending_timer_irqs(vcpu);

  if (dm_request_for_irq_injection(vcpu) &&
   kvm_vcpu_ready_for_interrupt_injection(vcpu)) {
   r = 0;
   vcpu->run->exit_reason = KVM_EXIT_IRQ_WINDOW_OPEN;
   ++vcpu->stat.request_irq_exits;
   break;
  }

  kvm_check_async_pf_completion(vcpu);

  if (signal_pending(current)) {
   r = -EINTR;
   vcpu->run->exit_reason = KVM_EXIT_INTR;
   ++vcpu->stat.signal_exits;
   break;
  }
  if (need_resched()) {
   srcu_read_unlock(&kvm->srcu, vcpu->srcu_idx);
   cond_resched();
   vcpu->srcu_idx = srcu_read_lock(&kvm->srcu);
  }
 }

 srcu_read_unlock(&kvm->srcu, vcpu->srcu_idx);

 return r;
}
