
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {int val; } ;
struct kvm_vcpu {int dummy; } ;


 int SYS_CTR_EL0 ;
 int read_sanitised_ftr_reg (int ) ;

__attribute__((used)) static void get_ctr_el0(struct kvm_vcpu *v, const struct sys_reg_desc *r)
{
 ((struct sys_reg_desc *)r)->val = read_sanitised_ftr_reg(SYS_CTR_EL0);
}
