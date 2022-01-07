
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned int MIPS_CONF5_MRP ;
 unsigned int kvm_vz_config5_guest_wrmask (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned int kvm_vz_config5_user_wrmask(struct kvm_vcpu *vcpu)
{
 return kvm_vz_config5_guest_wrmask(vcpu) | MIPS_CONF5_MRP;
}
