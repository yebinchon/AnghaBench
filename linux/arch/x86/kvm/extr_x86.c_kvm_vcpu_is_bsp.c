
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic_base; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MSR_IA32_APICBASE_BSP ;

bool kvm_vcpu_is_bsp(struct kvm_vcpu *vcpu)
{
 return (vcpu->arch.apic_base & MSR_IA32_APICBASE_BSP) != 0;
}
