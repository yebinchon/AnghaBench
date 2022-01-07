
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic_irq {int trig_mode; int level; int vector; int delivery_mode; } ;
struct kvm_lapic {int dummy; } ;
struct dest_map {int dummy; } ;


 int __apic_accept_irq (struct kvm_lapic*,int ,int ,int ,int ,struct dest_map*) ;

int kvm_apic_set_irq(struct kvm_vcpu *vcpu, struct kvm_lapic_irq *irq,
       struct dest_map *dest_map)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 return __apic_accept_irq(apic, irq->delivery_mode, irq->vector,
   irq->level, irq->trig_mode, dest_map);
}
