
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;
struct TYPE_4__ {int auto_eoi_bitmap; } ;


 int __apic_update_ppr (struct kvm_lapic*,int *) ;
 int apic_clear_irr (int,struct kvm_lapic*) ;
 int apic_set_isr (int,struct kvm_lapic*) ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int kvm_apic_has_interrupt (struct kvm_vcpu*) ;
 scalar_t__ test_bit (int,int ) ;
 TYPE_2__* vcpu_to_synic (struct kvm_vcpu*) ;

int kvm_get_apic_interrupt(struct kvm_vcpu *vcpu)
{
 int vector = kvm_apic_has_interrupt(vcpu);
 struct kvm_lapic *apic = vcpu->arch.apic;
 u32 ppr;

 if (vector == -1)
  return -1;
 apic_clear_irr(vector, apic);
 if (test_bit(vector, vcpu_to_synic(vcpu)->auto_eoi_bitmap)) {





  apic_update_ppr(apic);
 } else {






  apic_set_isr(vector, apic);
  __apic_update_ppr(apic, &ppr);
 }

 return vector;
}
