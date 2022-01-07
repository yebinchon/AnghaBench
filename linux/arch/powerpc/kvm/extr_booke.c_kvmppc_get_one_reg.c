
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union kvmppc_one_reg {int dummy; } kvmppc_one_reg ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int dac2; int dac1; int iac4; int iac3; int iac2; int iac1; } ;
struct TYPE_7__ {int vrsave; int tsr; int tcr; int epcr; TYPE_1__ dbg_reg; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_2__ arch; } ;
struct TYPE_9__ {TYPE_3__* kvm_ops; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_8__ {int (* get_one_reg ) (struct kvm_vcpu*,int,union kvmppc_one_reg*) ;} ;


 int KVMPPC_INST_SW_BREAKPOINT ;
 union kvmppc_one_reg get_reg_val (int,int ) ;
 int kvmppc_get_epr (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,int,union kvmppc_one_reg*) ;

int kvmppc_get_one_reg(struct kvm_vcpu *vcpu, u64 id,
   union kvmppc_one_reg *val)
{
 int r = 0;

 switch (id) {
 case 134:
  *val = get_reg_val(id, vcpu->arch.dbg_reg.iac1);
  break;
 case 133:
  *val = get_reg_val(id, vcpu->arch.dbg_reg.iac2);
  break;
 case 139:
  *val = get_reg_val(id, vcpu->arch.dbg_reg.dac1);
  break;
 case 138:
  *val = get_reg_val(id, vcpu->arch.dbg_reg.dac2);
  break;
 case 135: {
  u32 epr = kvmppc_get_epr(vcpu);
  *val = get_reg_val(id, epr);
  break;
 }





 case 130:
  *val = get_reg_val(id, vcpu->arch.tcr);
  break;
 case 129:
  *val = get_reg_val(id, vcpu->arch.tsr);
  break;
 case 137:
  *val = get_reg_val(id, KVMPPC_INST_SW_BREAKPOINT);
  break;
 case 128:
  *val = get_reg_val(id, vcpu->arch.vrsave);
  break;
 default:
  r = vcpu->kvm->arch.kvm_ops->get_one_reg(vcpu, id, val);
  break;
 }

 return r;
}
