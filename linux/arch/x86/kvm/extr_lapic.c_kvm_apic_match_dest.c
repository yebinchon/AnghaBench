
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;





 int APIC_DEST_PHYSICAL ;

 int ASSERT (struct kvm_lapic*) ;
 int kvm_apic_match_logical_addr (struct kvm_lapic*,int ) ;
 int kvm_apic_match_physical_addr (struct kvm_lapic*,int ) ;
 int kvm_apic_mda (struct kvm_vcpu*,unsigned int,struct kvm_lapic*,struct kvm_lapic*) ;

bool kvm_apic_match_dest(struct kvm_vcpu *vcpu, struct kvm_lapic *source,
      int short_hand, unsigned int dest, int dest_mode)
{
 struct kvm_lapic *target = vcpu->arch.apic;
 u32 mda = kvm_apic_mda(vcpu, dest, source, target);

 ASSERT(target);
 switch (short_hand) {
 case 129:
  if (dest_mode == APIC_DEST_PHYSICAL)
   return kvm_apic_match_physical_addr(target, mda);
  else
   return kvm_apic_match_logical_addr(target, mda);
 case 128:
  return target == source;
 case 130:
  return 1;
 case 131:
  return target != source;
 default:
  return 0;
 }
}
