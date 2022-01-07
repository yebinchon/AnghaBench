
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sie_block; } ;
struct kvm_vcpu {void* srcu_idx; TYPE_5__* kvm; TYPE_4__* run; TYPE_1__ arch; } ;
struct TYPE_10__ {int srcu; } ;
struct TYPE_7__ {int gprs; } ;
struct TYPE_8__ {TYPE_2__ regs; } ;
struct TYPE_9__ {TYPE_3__ s; } ;


 int __disable_cpu_timer_accounting (struct kvm_vcpu*) ;
 int __enable_cpu_timer_accounting (struct kvm_vcpu*) ;
 int current ;
 int guest_enter_irqoff () ;
 int guest_exit_irqoff () ;
 int guestdbg_exit_pending (struct kvm_vcpu*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int sie64a (int ,int ) ;
 int signal_pending (int ) ;
 void* srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,void*) ;
 int vcpu_post_run (struct kvm_vcpu*,int) ;
 int vcpu_pre_run (struct kvm_vcpu*) ;

__attribute__((used)) static int __vcpu_run(struct kvm_vcpu *vcpu)
{
 int rc, exit_reason;





 vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);

 do {
  rc = vcpu_pre_run(vcpu);
  if (rc)
   break;

  srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);




  local_irq_disable();
  guest_enter_irqoff();
  __disable_cpu_timer_accounting(vcpu);
  local_irq_enable();
  exit_reason = sie64a(vcpu->arch.sie_block,
         vcpu->run->s.regs.gprs);
  local_irq_disable();
  __enable_cpu_timer_accounting(vcpu);
  guest_exit_irqoff();
  local_irq_enable();
  vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);

  rc = vcpu_post_run(vcpu, exit_reason);
 } while (!signal_pending(current) && !guestdbg_exit_pending(vcpu) && !rc);

 srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
 return rc;
}
