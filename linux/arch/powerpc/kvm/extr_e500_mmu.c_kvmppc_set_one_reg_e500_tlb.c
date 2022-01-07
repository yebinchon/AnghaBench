
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union kvmppc_one_reg {int dummy; } kvmppc_one_reg ;
typedef int u64 ;
typedef void* u32 ;
struct TYPE_4__ {void** tlbps; void** tlbcfg; void* eptcfg; void* mmucfg; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {void* mas6; void* mas4; void* mas7_3; void* mas2; void* mas1; void* mas0; } ;


 int EINVAL ;
 void* set_reg_val (int,union kvmppc_one_reg) ;

int kvmppc_set_one_reg_e500_tlb(struct kvm_vcpu *vcpu, u64 id,
          union kvmppc_one_reg *val)
{
 int r = 0;
 long int i;

 switch (id) {
 case 142:
  vcpu->arch.shared->mas0 = set_reg_val(id, *val);
  break;
 case 141:
  vcpu->arch.shared->mas1 = set_reg_val(id, *val);
  break;
 case 140:
  vcpu->arch.shared->mas2 = set_reg_val(id, *val);
  break;
 case 137:
  vcpu->arch.shared->mas7_3 = set_reg_val(id, *val);
  break;
 case 139:
  vcpu->arch.shared->mas4 = set_reg_val(id, *val);
  break;
 case 138:
  vcpu->arch.shared->mas6 = set_reg_val(id, *val);
  break;

 case 136: {
  u32 reg = set_reg_val(id, *val);
  if (reg != vcpu->arch.mmucfg)
   r = -EINVAL;
  break;
 }
 case 143: {
  u32 reg = set_reg_val(id, *val);
  if (reg != vcpu->arch.eptcfg)
   r = -EINVAL;
  break;
 }
 case 135:
 case 133:
 case 131:
 case 129: {

  u32 reg = set_reg_val(id, *val);
  i = id - 135;
  if (reg != vcpu->arch.tlbcfg[i])
   r = -EINVAL;
  break;
 }
 case 134:
 case 132:
 case 130:
 case 128: {
  u32 reg = set_reg_val(id, *val);
  i = id - 134;
  if (reg != vcpu->arch.tlbps[i])
   r = -EINVAL;
  break;
 }
 default:
  r = -EINVAL;
  break;
 }

 return r;
}
