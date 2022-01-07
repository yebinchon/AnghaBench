
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_lapic {TYPE_1__* vcpu; } ;
struct TYPE_2__ {int kvm; } ;


 int APIC_LDR ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int ,int ) ;
 int recalculate_apic_map (int ) ;

__attribute__((used)) static inline void kvm_apic_set_ldr(struct kvm_lapic *apic, u32 id)
{
 kvm_lapic_set_reg(apic, APIC_LDR, id);
 recalculate_apic_map(apic->vcpu->kvm);
}
