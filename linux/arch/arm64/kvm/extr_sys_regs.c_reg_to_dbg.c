
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sys_reg_params {int regval; scalar_t__ is_32bit; } ;
struct TYPE_2__ {int flags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_ARM64_DEBUG_DIRTY ;

__attribute__((used)) static void reg_to_dbg(struct kvm_vcpu *vcpu,
         struct sys_reg_params *p,
         u64 *dbg_reg)
{
 u64 val = p->regval;

 if (p->is_32bit) {
  val &= 0xffffffffUL;
  val |= ((*dbg_reg >> 32) << 32);
 }

 *dbg_reg = val;
 vcpu->arch.flags |= KVM_ARM64_DEBUG_DIRTY;
}
