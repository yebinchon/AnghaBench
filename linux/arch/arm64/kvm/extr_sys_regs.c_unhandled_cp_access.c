
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sys_reg_params {int dummy; } ;
struct kvm_vcpu {int dummy; } ;






 int WARN_ON (int) ;
 int kvm_err (char*,int,int ,int ) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 int kvm_vcpu_trap_get_class (struct kvm_vcpu*) ;
 int print_sys_reg_instr (struct sys_reg_params*) ;
 int * vcpu_cpsr (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

__attribute__((used)) static void unhandled_cp_access(struct kvm_vcpu *vcpu,
    struct sys_reg_params *params)
{
 u8 hsr_ec = kvm_vcpu_trap_get_class(vcpu);
 int cp = -1;

 switch(hsr_ec) {
 case 129:
 case 128:
  cp = 15;
  break;
 case 130:
 case 131:
  cp = 14;
  break;
 default:
  WARN_ON(1);
 }

 kvm_err("Unsupported guest CP%d access at: %08lx [%08lx]\n",
  cp, *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
 print_sys_reg_instr(params);
 kvm_inject_undefined(vcpu);
}
