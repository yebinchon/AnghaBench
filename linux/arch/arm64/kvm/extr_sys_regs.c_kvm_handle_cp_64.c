
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sys_reg_params {int is_aarch32; int is_32bit; int CRm; int is_write; int Op1; int regval; scalar_t__ CRn; scalar_t__ Op2; scalar_t__ Op0; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int emulate_cp (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*,size_t) ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 int kvm_vcpu_sys_get_rt (struct kvm_vcpu*) ;
 int lower_32_bits (int) ;
 int unhandled_cp_access (struct kvm_vcpu*,struct sys_reg_params*) ;
 int upper_32_bits (int) ;
 int vcpu_get_reg (struct kvm_vcpu*,int) ;
 int vcpu_set_reg (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static int kvm_handle_cp_64(struct kvm_vcpu *vcpu,
       const struct sys_reg_desc *global,
       size_t nr_global,
       const struct sys_reg_desc *target_specific,
       size_t nr_specific)
{
 struct sys_reg_params params;
 u32 hsr = kvm_vcpu_get_hsr(vcpu);
 int Rt = kvm_vcpu_sys_get_rt(vcpu);
 int Rt2 = (hsr >> 10) & 0x1f;

 params.is_aarch32 = 1;
 params.is_32bit = 0;
 params.CRm = (hsr >> 1) & 0xf;
 params.is_write = ((hsr & 1) == 0);

 params.Op0 = 0;
 params.Op1 = (hsr >> 16) & 0xf;
 params.Op2 = 0;
 params.CRn = 0;





 if (params.is_write) {
  params.regval = vcpu_get_reg(vcpu, Rt) & 0xffffffff;
  params.regval |= vcpu_get_reg(vcpu, Rt2) << 32;
 }
 if (!emulate_cp(vcpu, &params, target_specific, nr_specific) ||
     !emulate_cp(vcpu, &params, global, nr_global)) {

  if (!params.is_write) {
   vcpu_set_reg(vcpu, Rt, lower_32_bits(params.regval));
   vcpu_set_reg(vcpu, Rt2, upper_32_bits(params.regval));
  }

  return 1;
 }

 unhandled_cp_access(vcpu, &params);
 return 1;
}
