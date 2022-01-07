
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int AMAIR_EL1 ;
 int amair_el1 ;
 int read_sysreg (int ) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static void reset_amair_el1(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
{
 u64 amair = read_sysreg(amair_el1);
 vcpu_write_sys_reg(vcpu, amair, AMAIR_EL1);
}
