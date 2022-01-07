
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmx_msr_entry {int index; scalar_t__ reserved; } ;
struct TYPE_2__ {int apic_base; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 int MSR_IA32_UCODE_REV ;
 int MSR_IA32_UCODE_WRITE ;
 int X2APIC_ENABLE ;

__attribute__((used)) static int nested_vmx_msr_check_common(struct kvm_vcpu *vcpu,
           struct vmx_msr_entry *e)
{

 if (CC(vcpu->arch.apic_base & X2APIC_ENABLE && e->index >> 8 == 0x8))
  return -EINVAL;
 if (CC(e->index == MSR_IA32_UCODE_WRITE) ||
     CC(e->index == MSR_IA32_UCODE_REV))
  return -EINVAL;
 if (CC(e->reserved != 0))
  return -EINVAL;
 return 0;
}
