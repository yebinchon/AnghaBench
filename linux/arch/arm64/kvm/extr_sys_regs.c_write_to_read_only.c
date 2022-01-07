
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 int print_sys_reg_instr (struct sys_reg_params*) ;

__attribute__((used)) static bool write_to_read_only(struct kvm_vcpu *vcpu,
          struct sys_reg_params *params,
          const struct sys_reg_desc *r)
{
 WARN_ONCE(1, "Unexpected sys_reg write to read-only register\n");
 print_sys_reg_instr(params);
 kvm_inject_undefined(vcpu);
 return 0;
}
