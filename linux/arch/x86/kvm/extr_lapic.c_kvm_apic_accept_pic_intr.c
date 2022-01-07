
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_LVT0 ;
 int APIC_LVT_MASKED ;
 scalar_t__ APIC_MODE_EXTINT ;
 scalar_t__ GET_APIC_DELIVERY_MODE (int) ;
 int kvm_apic_hw_enabled (int ) ;
 int kvm_lapic_get_reg (int ,int ) ;

int kvm_apic_accept_pic_intr(struct kvm_vcpu *vcpu)
{
 u32 lvt0 = kvm_lapic_get_reg(vcpu->arch.apic, APIC_LVT0);
 int r = 0;

 if (!kvm_apic_hw_enabled(vcpu->arch.apic))
  r = 1;
 if ((lvt0 & APIC_LVT_MASKED) == 0 &&
     GET_APIC_DELIVERY_MODE(lvt0) == APIC_MODE_EXTINT)
  r = 1;
 return r;
}
