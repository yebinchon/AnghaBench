
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int injected; } ;
struct TYPE_4__ {TYPE_1__ interrupt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int is_guest_mode (struct kvm_vcpu*) ;
 int kvm_apic_has_interrupt (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_extint (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

int kvm_cpu_has_injectable_intr(struct kvm_vcpu *v)
{
 if (!lapic_in_kernel(v))
  return v->arch.interrupt.injected;

 if (kvm_cpu_has_extint(v))
  return 1;

 if (!is_guest_mode(v) && kvm_vcpu_apicv_active(v))
  return 0;

 return kvm_apic_has_interrupt(v) != -1;
}
