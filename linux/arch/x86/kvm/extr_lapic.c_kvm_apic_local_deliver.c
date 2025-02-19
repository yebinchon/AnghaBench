
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;


 int APIC_LVT_LEVEL_TRIGGER ;
 int APIC_LVT_MASKED ;
 int APIC_MODE_MASK ;
 int APIC_VECTOR_MASK ;
 int __apic_accept_irq (struct kvm_lapic*,int,int,int,int,int *) ;
 scalar_t__ kvm_apic_hw_enabled (struct kvm_lapic*) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int) ;

int kvm_apic_local_deliver(struct kvm_lapic *apic, int lvt_type)
{
 u32 reg = kvm_lapic_get_reg(apic, lvt_type);
 int vector, mode, trig_mode;

 if (kvm_apic_hw_enabled(apic) && !(reg & APIC_LVT_MASKED)) {
  vector = reg & APIC_VECTOR_MASK;
  mode = reg & APIC_MODE_MASK;
  trig_mode = reg & APIC_LVT_LEVEL_TRIGGER;
  return __apic_accept_irq(apic, mode, vector, 1, trig_mode,
     ((void*)0));
 }
 return 0;
}
