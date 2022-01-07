
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_params {int regval; int is_write; int is_aarch32; int is_32bit; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENXIO ;
 int KVM_DEV_ARM_VGIC_SYSREG_MASK ;
 int KVM_REG_SIZE_U64 ;
 scalar_t__ find_reg_by_id (int,struct sys_reg_params*,int ,int ) ;
 int gic_v3_icc_reg_descs ;

int vgic_v3_has_cpu_sysregs_attr(struct kvm_vcpu *vcpu, bool is_write, u64 id,
    u64 *reg)
{
 struct sys_reg_params params;
 u64 sysreg = (id & KVM_DEV_ARM_VGIC_SYSREG_MASK) | KVM_REG_SIZE_U64;

 params.regval = *reg;
 params.is_write = is_write;
 params.is_aarch32 = 0;
 params.is_32bit = 0;

 if (find_reg_by_id(sysreg, &params, gic_v3_icc_reg_descs,
         ARRAY_SIZE(gic_v3_icc_reg_descs)))
  return 0;

 return -ENXIO;
}
