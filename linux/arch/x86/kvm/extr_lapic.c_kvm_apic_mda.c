
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_lapic {int dummy; } ;
struct TYPE_3__ {int x2apic_broadcast_quirk_disabled; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 unsigned int APIC_BROADCAST ;
 unsigned int X2APIC_BROADCAST ;
 scalar_t__ apic_x2apic_mode (struct kvm_lapic*) ;

__attribute__((used)) static u32 kvm_apic_mda(struct kvm_vcpu *vcpu, unsigned int dest_id,
  struct kvm_lapic *source, struct kvm_lapic *target)
{
 bool ipi = source != ((void*)0);

 if (!vcpu->kvm->arch.x2apic_broadcast_quirk_disabled &&
     !ipi && dest_id == APIC_BROADCAST && apic_x2apic_mode(target))
  return X2APIC_BROADCAST;

 return dest_id;
}
