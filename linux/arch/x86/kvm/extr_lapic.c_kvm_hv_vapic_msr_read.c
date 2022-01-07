
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int APIC_ICR ;
 int APIC_ICR2 ;
 scalar_t__ kvm_lapic_reg_read (struct kvm_lapic*,int,int,int*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

int kvm_hv_vapic_msr_read(struct kvm_vcpu *vcpu, u32 reg, u64 *data)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u32 low, high = 0;

 if (!lapic_in_kernel(vcpu))
  return 1;

 if (kvm_lapic_reg_read(apic, reg, 4, &low))
  return 1;
 if (reg == APIC_ICR)
  kvm_lapic_reg_read(apic, APIC_ICR2, 4, &high);

 *data = (((u64)high) << 32) | low;

 return 0;
}
