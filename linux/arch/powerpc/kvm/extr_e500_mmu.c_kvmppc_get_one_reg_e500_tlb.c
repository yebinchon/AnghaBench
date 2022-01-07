
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union kvmppc_one_reg {int dummy; } kvmppc_one_reg ;
typedef int u64 ;
struct TYPE_4__ {int * tlbps; int * tlbcfg; int eptcfg; int mmucfg; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int mas6; int mas4; int mas7_3; int mas2; int mas1; int mas0; } ;


 int EINVAL ;
 union kvmppc_one_reg get_reg_val (int,int ) ;

int kvmppc_get_one_reg_e500_tlb(struct kvm_vcpu *vcpu, u64 id,
    union kvmppc_one_reg *val)
{
 int r = 0;
 long int i;

 switch (id) {
 case 142:
  *val = get_reg_val(id, vcpu->arch.shared->mas0);
  break;
 case 141:
  *val = get_reg_val(id, vcpu->arch.shared->mas1);
  break;
 case 140:
  *val = get_reg_val(id, vcpu->arch.shared->mas2);
  break;
 case 137:
  *val = get_reg_val(id, vcpu->arch.shared->mas7_3);
  break;
 case 139:
  *val = get_reg_val(id, vcpu->arch.shared->mas4);
  break;
 case 138:
  *val = get_reg_val(id, vcpu->arch.shared->mas6);
  break;
 case 136:
  *val = get_reg_val(id, vcpu->arch.mmucfg);
  break;
 case 143:
  *val = get_reg_val(id, vcpu->arch.eptcfg);
  break;
 case 135:
 case 133:
 case 131:
 case 129:
  i = id - 135;
  *val = get_reg_val(id, vcpu->arch.tlbcfg[i]);
  break;
 case 134:
 case 132:
 case 130:
 case 128:
  i = id - 134;
  *val = get_reg_val(id, vcpu->arch.tlbps[i]);
  break;
 default:
  r = -EINVAL;
  break;
 }

 return r;
}
