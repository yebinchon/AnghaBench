
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int halted; } ;
struct TYPE_5__ {scalar_t__ mp_state; TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int (* check_nested_events ) (struct kvm_vcpu*,int) ;} ;


 scalar_t__ KVM_MP_STATE_RUNNABLE ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;

__attribute__((used)) static inline bool kvm_vcpu_running(struct kvm_vcpu *vcpu)
{
 if (is_guest_mode(vcpu) && kvm_x86_ops->check_nested_events)
  kvm_x86_ops->check_nested_events(vcpu, 0);

 return (vcpu->arch.mp_state == KVM_MP_STATE_RUNNABLE &&
  !vcpu->arch.apf.halted);
}
