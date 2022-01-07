
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int epr_needed; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_2__ arch; } ;
struct TYPE_4__ {scalar_t__ epr; } ;
struct TYPE_6__ {int exit_reason; TYPE_1__ epr; } ;


 int KVM_EXIT_EPR ;
 int KVM_EXIT_WATCHDOG ;
 int KVM_REQ_EPR_EXIT ;
 int KVM_REQ_PENDING_TIMER ;
 int KVM_REQ_TLB_FLUSH ;
 int KVM_REQ_WATCHDOG ;
 scalar_t__ kvm_check_request (int ,struct kvm_vcpu*) ;
 int kvmppc_core_flush_tlb (struct kvm_vcpu*) ;
 int update_timer_ints (struct kvm_vcpu*) ;

int kvmppc_core_check_requests(struct kvm_vcpu *vcpu)
{
 int r = 1;

 if (kvm_check_request(KVM_REQ_PENDING_TIMER, vcpu))
  update_timer_ints(vcpu);





 if (kvm_check_request(KVM_REQ_WATCHDOG, vcpu)) {
  vcpu->run->exit_reason = KVM_EXIT_WATCHDOG;
  r = 0;
 }

 if (kvm_check_request(KVM_REQ_EPR_EXIT, vcpu)) {
  vcpu->run->epr.epr = 0;
  vcpu->arch.epr_needed = 1;
  vcpu->run->exit_reason = KVM_EXIT_EPR;
  r = 0;
 }

 return r;
}
