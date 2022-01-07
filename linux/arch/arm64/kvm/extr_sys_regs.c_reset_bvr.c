
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_reg_desc {size_t reg; int val; } ;
struct TYPE_3__ {int * dbg_bvr; } ;
struct TYPE_4__ {TYPE_1__ vcpu_debug_state; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;



__attribute__((used)) static void reset_bvr(struct kvm_vcpu *vcpu,
        const struct sys_reg_desc *rd)
{
 vcpu->arch.vcpu_debug_state.dbg_bvr[rd->reg] = rd->val;
}
