
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int is_aarch32; int is_32bit; unsigned long Op0; unsigned long Op1; unsigned long CRn; unsigned long CRm; unsigned long Op2; int is_write; int regval; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int emulate_sys_reg (struct kvm_vcpu*,struct sys_reg_params*) ;
 unsigned long kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 int kvm_vcpu_sys_get_rt (struct kvm_vcpu*) ;
 int trace_kvm_handle_sys_reg (unsigned long) ;
 int vcpu_get_reg (struct kvm_vcpu*,int) ;
 int vcpu_set_reg (struct kvm_vcpu*,int,int ) ;

int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 struct sys_reg_params params;
 unsigned long esr = kvm_vcpu_get_hsr(vcpu);
 int Rt = kvm_vcpu_sys_get_rt(vcpu);
 int ret;

 trace_kvm_handle_sys_reg(esr);

 params.is_aarch32 = 0;
 params.is_32bit = 0;
 params.Op0 = (esr >> 20) & 3;
 params.Op1 = (esr >> 14) & 0x7;
 params.CRn = (esr >> 10) & 0xf;
 params.CRm = (esr >> 1) & 0xf;
 params.Op2 = (esr >> 17) & 0x7;
 params.regval = vcpu_get_reg(vcpu, Rt);
 params.is_write = !(esr & 1);

 ret = emulate_sys_reg(vcpu, &params);

 if (!params.is_write)
  vcpu_set_reg(vcpu, Rt, params.regval);
 return ret;
}
