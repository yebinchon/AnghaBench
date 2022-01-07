
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pending; } ;
struct TYPE_7__ {scalar_t__ pv_unhalted; } ;
struct TYPE_9__ {scalar_t__ smi_pending; scalar_t__ nmi_pending; TYPE_3__ exception; TYPE_2__ pv; } ;
struct TYPE_6__ {int done; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ async_pf; } ;
struct TYPE_10__ {scalar_t__ (* nmi_allowed ) (struct kvm_vcpu*) ;} ;


 int KVM_REQ_NMI ;
 int KVM_REQ_SMI ;
 int is_smm (struct kvm_vcpu*) ;
 scalar_t__ kvm_apic_has_events (struct kvm_vcpu*) ;
 scalar_t__ kvm_arch_interrupt_allowed (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_interrupt (struct kvm_vcpu*) ;
 scalar_t__ kvm_guest_apic_has_interrupt (struct kvm_vcpu*) ;
 scalar_t__ kvm_hv_has_stimer_pending (struct kvm_vcpu*) ;
 scalar_t__ kvm_test_request (int ,struct kvm_vcpu*) ;
 TYPE_5__* kvm_x86_ops ;
 int list_empty_careful (int *) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool kvm_vcpu_has_events(struct kvm_vcpu *vcpu)
{
 if (!list_empty_careful(&vcpu->async_pf.done))
  return 1;

 if (kvm_apic_has_events(vcpu))
  return 1;

 if (vcpu->arch.pv.pv_unhalted)
  return 1;

 if (vcpu->arch.exception.pending)
  return 1;

 if (kvm_test_request(KVM_REQ_NMI, vcpu) ||
     (vcpu->arch.nmi_pending &&
      kvm_x86_ops->nmi_allowed(vcpu)))
  return 1;

 if (kvm_test_request(KVM_REQ_SMI, vcpu) ||
     (vcpu->arch.smi_pending && !is_smm(vcpu)))
  return 1;

 if (kvm_arch_interrupt_allowed(vcpu) &&
     (kvm_cpu_has_interrupt(vcpu) ||
     kvm_guest_apic_has_interrupt(vcpu)))
  return 1;

 if (kvm_hv_has_stimer_pending(vcpu))
  return 1;

 return 0;
}
