
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pending; } ;
struct TYPE_5__ {TYPE_1__ exception; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
struct TYPE_6__ {int (* interrupt_allowed ) (struct kvm_vcpu*) ;} ;


 int kvm_can_deliver_async_pf (struct kvm_vcpu*) ;
 scalar_t__ kvm_event_needs_reinjection (struct kvm_vcpu*) ;
 scalar_t__ kvm_hlt_in_guest (int ) ;
 TYPE_3__* kvm_x86_ops ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

bool kvm_can_do_async_pf(struct kvm_vcpu *vcpu)
{
 if (unlikely(!lapic_in_kernel(vcpu) ||
       kvm_event_needs_reinjection(vcpu) ||
       vcpu->arch.exception.pending))
  return 0;

 if (kvm_hlt_in_guest(vcpu->kvm) && !kvm_can_deliver_async_pf(vcpu))
  return 0;





 return kvm_x86_ops->interrupt_allowed(vcpu);
}
