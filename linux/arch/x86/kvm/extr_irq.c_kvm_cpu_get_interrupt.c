
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; } ;
struct TYPE_4__ {TYPE_1__ interrupt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int kvm_cpu_get_extint (struct kvm_vcpu*) ;
 int kvm_get_apic_interrupt (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

int kvm_cpu_get_interrupt(struct kvm_vcpu *v)
{
 int vector;

 if (!lapic_in_kernel(v))
  return v->arch.interrupt.nr;

 vector = kvm_cpu_get_extint(v);

 if (vector != -1)
  return vector;

 return kvm_get_apic_interrupt(v);
}
