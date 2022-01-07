
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int misc_low; } ;
struct TYPE_5__ {TYPE_1__ msrs; } ;
struct TYPE_6__ {TYPE_2__ nested; } ;


 int MSR_IA32_VMX_MISC_VMWRITE_SHADOW_RO_FIELDS ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool nested_cpu_has_vmwrite_any_field(struct kvm_vcpu *vcpu)
{
 return to_vmx(vcpu)->nested.msrs.misc_low &
  MSR_IA32_VMX_MISC_VMWRITE_SHADOW_RO_FIELDS;
}
