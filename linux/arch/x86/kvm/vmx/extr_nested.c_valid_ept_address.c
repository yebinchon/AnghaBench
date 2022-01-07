
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int ept_caps; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int VMX_EPTP_AD_ENABLE_BIT ;
 int VMX_EPTP_MT_MASK ;


 int VMX_EPTP_PWL_4 ;
 int VMX_EPTP_PWL_MASK ;
 int VMX_EPTP_UC_BIT ;
 int VMX_EPTP_WB_BIT ;
 int VMX_EPT_AD_BIT ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static bool valid_ept_address(struct kvm_vcpu *vcpu, u64 address)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int maxphyaddr = cpuid_maxphyaddr(vcpu);


 switch (address & VMX_EPTP_MT_MASK) {
 case 129:
  if (CC(!(vmx->nested.msrs.ept_caps & VMX_EPTP_UC_BIT)))
   return 0;
  break;
 case 128:
  if (CC(!(vmx->nested.msrs.ept_caps & VMX_EPTP_WB_BIT)))
   return 0;
  break;
 default:
  return 0;
 }


 if (CC((address & VMX_EPTP_PWL_MASK) != VMX_EPTP_PWL_4))
  return 0;


 if (CC(address >> maxphyaddr || ((address >> 7) & 0x1f)))
  return 0;


 if (address & VMX_EPTP_AD_ENABLE_BIT) {
  if (CC(!(vmx->nested.msrs.ept_caps & VMX_EPT_AD_BIT)))
   return 0;
 }

 return 1;
}
