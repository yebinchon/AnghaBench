
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int SYS_ID_AA64ZFR0_EL1 ;
 int read_sanitised_ftr_reg (int ) ;
 int vcpu_has_sve (struct kvm_vcpu const*) ;

__attribute__((used)) static u64 guest_id_aa64zfr0_el1(const struct kvm_vcpu *vcpu)
{
 if (!vcpu_has_sve(vcpu))
  return 0;

 return read_sanitised_ftr_reg(SYS_ID_AA64ZFR0_EL1);
}
