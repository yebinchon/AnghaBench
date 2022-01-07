
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvm_lapic {TYPE_1__* vcpu; } ;
struct TYPE_2__ {scalar_t__ vcpu_id; int kvm; } ;


 int APIC_ID ;
 int APIC_LDR ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ kvm_apic_calc_x2apic_ldr (scalar_t__) ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int ,scalar_t__) ;
 int recalculate_apic_map (int ) ;

__attribute__((used)) static inline void kvm_apic_set_x2apic_id(struct kvm_lapic *apic, u32 id)
{
 u32 ldr = kvm_apic_calc_x2apic_ldr(id);

 WARN_ON_ONCE(id != apic->vcpu->vcpu_id);

 kvm_lapic_set_reg(apic, APIC_ID, id);
 kvm_lapic_set_reg(apic, APIC_LDR, ldr);
 recalculate_apic_map(apic->vcpu->kvm);
}
