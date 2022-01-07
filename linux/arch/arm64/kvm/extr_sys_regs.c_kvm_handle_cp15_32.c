
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sys_reg_desc {int dummy; } ;
struct TYPE_2__ {int target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int cp15_regs ;
 struct sys_reg_desc* get_target_table (int ,int,size_t*) ;
 int kvm_handle_cp_32 (struct kvm_vcpu*,int ,int ,struct sys_reg_desc const*,size_t) ;

int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 const struct sys_reg_desc *target_specific;
 size_t num;

 target_specific = get_target_table(vcpu->arch.target, 0, &num);
 return kvm_handle_cp_32(vcpu,
    cp15_regs, ARRAY_SIZE(cp15_regs),
    target_specific, num);
}
