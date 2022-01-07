
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvm_vcpu {int kvm; } ;


 int MSR_PR ;
 int MSR_SF ;
 scalar_t__ is_kvmppc_hv_enabled (int ) ;
 int kvmppc_get_critical (struct kvm_vcpu*) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool kvmppc_critical_section(struct kvm_vcpu *vcpu)
{
 ulong crit_raw;
 ulong crit_r1;
 bool crit;

 if (is_kvmppc_hv_enabled(vcpu->kvm))
  return 0;

 crit_raw = kvmppc_get_critical(vcpu);
 crit_r1 = kvmppc_get_gpr(vcpu, 1);


 if (!(kvmppc_get_msr(vcpu) & MSR_SF)) {
  crit_raw &= 0xffffffff;
  crit_r1 &= 0xffffffff;
 }


 crit = (crit_raw == crit_r1);

 crit = crit && !(kvmppc_get_msr(vcpu) & MSR_PR);

 return crit;
}
