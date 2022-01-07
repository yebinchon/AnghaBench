
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int VMX_EPTP_AD_ENABLE_BIT ;
 int nested_ept_get_cr3 (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool nested_ept_ad_enabled(struct kvm_vcpu *vcpu)
{
 return nested_ept_get_cr3(vcpu) & VMX_EPTP_AD_ENABLE_BIT;
}
