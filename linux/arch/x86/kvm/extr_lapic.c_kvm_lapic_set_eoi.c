
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_EOI ;
 int kvm_lapic_reg_write (int ,int ,int ) ;

void kvm_lapic_set_eoi(struct kvm_vcpu *vcpu)
{
 kvm_lapic_reg_write(vcpu->arch.apic, APIC_EOI, 0);
}
