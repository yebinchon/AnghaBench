
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_lapic {int dummy; } ;


 int APIC_ID ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static inline u8 kvm_xapic_id(struct kvm_lapic *apic)
{
 return kvm_lapic_get_reg(apic, APIC_ID) >> 24;
}
