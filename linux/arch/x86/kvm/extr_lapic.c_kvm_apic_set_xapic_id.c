
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kvm_lapic {TYPE_1__* vcpu; } ;
struct TYPE_2__ {int kvm; } ;


 int APIC_ID ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int ,int) ;
 int recalculate_apic_map (int ) ;

__attribute__((used)) static inline void kvm_apic_set_xapic_id(struct kvm_lapic *apic, u8 id)
{
 kvm_lapic_set_reg(apic, APIC_ID, id << 24);
 recalculate_apic_map(apic->vcpu->kvm);
}
