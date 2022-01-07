
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_params {int regval; int is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_arm_pmu_v3_ready (struct kvm_vcpu*) ;
 int kvm_pmu_software_increment (struct kvm_vcpu*,int) ;
 int kvm_pmu_valid_counter_mask (struct kvm_vcpu*) ;
 scalar_t__ pmu_write_swinc_el0_disabled (struct kvm_vcpu*) ;
 int read_from_write_only (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;
 int trap_raz_wi (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;

__attribute__((used)) static bool access_pmswinc(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
      const struct sys_reg_desc *r)
{
 u64 mask;

 if (!kvm_arm_pmu_v3_ready(vcpu))
  return trap_raz_wi(vcpu, p, r);

 if (!p->is_write)
  return read_from_write_only(vcpu, p, r);

 if (pmu_write_swinc_el0_disabled(vcpu))
  return 0;

 mask = kvm_pmu_valid_counter_mask(vcpu);
 kvm_pmu_software_increment(vcpu, p->regval & mask);
 return 1;
}
