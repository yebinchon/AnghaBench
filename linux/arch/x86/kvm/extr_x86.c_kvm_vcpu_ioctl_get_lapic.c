
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic_state {int dummy; } ;
struct TYPE_4__ {int (* sync_pir_to_irr ) (struct kvm_vcpu*) ;} ;


 int kvm_apic_get_state (struct kvm_vcpu*,struct kvm_lapic_state*) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_get_lapic(struct kvm_vcpu *vcpu,
        struct kvm_lapic_state *s)
{
 if (vcpu->arch.apicv_active)
  kvm_x86_ops->sync_pir_to_irr(vcpu);

 return kvm_apic_get_state(vcpu, s);
}
