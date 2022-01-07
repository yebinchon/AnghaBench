
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sys_reg_params {int is_aarch32; int is_32bit; int CRm; int is_write; int CRn; int Op1; int Op2; int regval; scalar_t__ Op0; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int emulate_cp (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*,size_t) ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 int kvm_vcpu_sys_get_rt (struct kvm_vcpu*) ;
 int unhandled_cp_access (struct kvm_vcpu*,struct sys_reg_params*) ;
 int vcpu_get_reg (struct kvm_vcpu*,int) ;
 int vcpu_set_reg (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static int kvm_handle_cp_32(struct kvm_vcpu *vcpu,
       const struct sys_reg_desc *global,
       size_t nr_global,
       const struct sys_reg_desc *target_specific,
       size_t nr_specific)
{
 struct sys_reg_params params;
 u32 hsr = kvm_vcpu_get_hsr(vcpu);
 int Rt = kvm_vcpu_sys_get_rt(vcpu);

 params.is_aarch32 = 1;
 params.is_32bit = 1;
 params.CRm = (hsr >> 1) & 0xf;
 params.regval = vcpu_get_reg(vcpu, Rt);
 params.is_write = ((hsr & 1) == 0);
 params.CRn = (hsr >> 10) & 0xf;
 params.Op0 = 0;
 params.Op1 = (hsr >> 14) & 0x7;
 params.Op2 = (hsr >> 17) & 0x7;

 if (!emulate_cp(vcpu, &params, target_specific, nr_specific) ||
     !emulate_cp(vcpu, &params, global, nr_global)) {
  if (!params.is_write)
   vcpu_set_reg(vcpu, Rt, params.regval);
  return 1;
 }

 unhandled_cp_access(vcpu, &params);
 return 1;
}
