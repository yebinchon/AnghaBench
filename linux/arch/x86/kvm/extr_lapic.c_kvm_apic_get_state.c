
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_lapic_state {int regs; } ;
struct TYPE_3__ {int regs; } ;


 int kvm_apic_state_fixup (struct kvm_vcpu*,struct kvm_lapic_state*,int) ;
 int memcpy (int ,int ,int) ;

int kvm_apic_get_state(struct kvm_vcpu *vcpu, struct kvm_lapic_state *s)
{
 memcpy(s->regs, vcpu->arch.apic->regs, sizeof(*s));
 return kvm_apic_state_fixup(vcpu, s, 0);
}
