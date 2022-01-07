
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_DFR ;
 scalar_t__ APIC_DFR_FLAT ;
 int AVIC_LOGICAL_ID_ENTRY_GUEST_PHYSICAL_ID_MASK ;
 int AVIC_LOGICAL_ID_ENTRY_VALID_MASK ;
 int EINVAL ;
 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int) ;
 int* avic_get_logical_id_entry (struct kvm_vcpu*,int,int) ;
 scalar_t__ kvm_lapic_get_reg (int ,int ) ;

__attribute__((used)) static int avic_ldr_write(struct kvm_vcpu *vcpu, u8 g_physical_id, u32 ldr)
{
 bool flat;
 u32 *entry, new_entry;

 flat = kvm_lapic_get_reg(vcpu->arch.apic, APIC_DFR) == APIC_DFR_FLAT;
 entry = avic_get_logical_id_entry(vcpu, ldr, flat);
 if (!entry)
  return -EINVAL;

 new_entry = READ_ONCE(*entry);
 new_entry &= ~AVIC_LOGICAL_ID_ENTRY_GUEST_PHYSICAL_ID_MASK;
 new_entry |= (g_physical_id & AVIC_LOGICAL_ID_ENTRY_GUEST_PHYSICAL_ID_MASK);
 new_entry |= AVIC_LOGICAL_ID_ENTRY_VALID_MASK;
 WRITE_ONCE(*entry, new_entry);

 return 0;
}
