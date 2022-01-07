
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int dummy; } ;


 int APIC_LVT_MASKED ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int) ;

__attribute__((used)) static inline int apic_lvt_enabled(struct kvm_lapic *apic, int lvt_type)
{
 return !(kvm_lapic_get_reg(apic, lvt_type) & APIC_LVT_MASKED);
}
