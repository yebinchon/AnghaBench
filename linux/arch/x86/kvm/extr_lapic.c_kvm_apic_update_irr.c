
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int regs; } ;


 int __kvm_apic_update_irr (int *,int ,int*) ;

bool kvm_apic_update_irr(struct kvm_vcpu *vcpu, u32 *pir, int *max_irr)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 return __kvm_apic_update_irr(pir, apic->regs, max_irr);
}
