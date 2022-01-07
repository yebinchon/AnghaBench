
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int ID_AA64DFR0_BRPS_SHIFT ;
 int ID_AA64DFR0_CTX_CMPS_SHIFT ;
 int ID_AA64DFR0_WRPS_SHIFT ;
 int ID_AA64PFR0_EL3_SHIFT ;
 int SYS_ID_AA64DFR0_EL1 ;
 int SYS_ID_AA64PFR0_EL1 ;
 int cpuid_feature_extract_unsigned_field (int,int ) ;
 int ignore_write (struct kvm_vcpu*,struct sys_reg_params*) ;
 int read_sanitised_ftr_reg (int ) ;

__attribute__((used)) static bool trap_dbgidr(struct kvm_vcpu *vcpu,
   struct sys_reg_params *p,
   const struct sys_reg_desc *r)
{
 if (p->is_write) {
  return ignore_write(vcpu, p);
 } else {
  u64 dfr = read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1);
  u64 pfr = read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1);
  u32 el3 = !!cpuid_feature_extract_unsigned_field(pfr, ID_AA64PFR0_EL3_SHIFT);

  p->regval = ((((dfr >> ID_AA64DFR0_WRPS_SHIFT) & 0xf) << 28) |
        (((dfr >> ID_AA64DFR0_BRPS_SHIFT) & 0xf) << 24) |
        (((dfr >> ID_AA64DFR0_CTX_CMPS_SHIFT) & 0xf) << 20)
        | (6 << 16) | (el3 << 14) | (el3 << 12));
  return 1;
 }
}
