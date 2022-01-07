
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
typedef void* u32 ;
struct TYPE_6__ {void* dac2; void* dac1; void* iac4; void* iac3; void* iac2; void* iac1; } ;
struct TYPE_7__ {void* vrsave; TYPE_1__ dbg_reg; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_2__ arch; } ;
struct TYPE_9__ {TYPE_3__* kvm_ops; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_8__ {int (* set_one_reg ) (struct kvm_vcpu*,int,union kvmppc_one_reg*) ;} ;
 int kvmppc_clr_tsr_bits (struct kvm_vcpu*,void*) ;
 int kvmppc_set_epcr (struct kvm_vcpu*,void*) ;
 int kvmppc_set_epr (struct kvm_vcpu*,void*) ;
 int kvmppc_set_tcr (struct kvm_vcpu*,void*) ;
 int kvmppc_set_tsr (struct kvm_vcpu*,void*) ;
 int kvmppc_set_tsr_bits (struct kvm_vcpu*,void*) ;
 void* set_reg_val (int,union kvmppc_one_reg) ;
 int stub1 (struct kvm_vcpu*,int,union kvmppc_one_reg*) ;

int kvmppc_set_one_reg(struct kvm_vcpu *vcpu, u64 id,
   union kvmppc_one_reg *val)
{
 int r = 0;

 switch (id) {
 case 135:
  vcpu->arch.dbg_reg.iac1 = set_reg_val(id, *val);
  break;
 case 134:
  vcpu->arch.dbg_reg.iac2 = set_reg_val(id, *val);
  break;
 case 139:
  vcpu->arch.dbg_reg.dac1 = set_reg_val(id, *val);
  break;
 case 138:
  vcpu->arch.dbg_reg.dac2 = set_reg_val(id, *val);
  break;
 case 136: {
  u32 new_epr = set_reg_val(id, *val);
  kvmppc_set_epr(vcpu, new_epr);
  break;
 }







 case 131: {
  u32 tsr_bits = set_reg_val(id, *val);
  kvmppc_set_tsr_bits(vcpu, tsr_bits);
  break;
 }
 case 140: {
  u32 tsr_bits = set_reg_val(id, *val);
  kvmppc_clr_tsr_bits(vcpu, tsr_bits);
  break;
 }
 case 129: {
  u32 tsr = set_reg_val(id, *val);
  kvmppc_set_tsr(vcpu, tsr);
  break;
 }
 case 130: {
  u32 tcr = set_reg_val(id, *val);
  kvmppc_set_tcr(vcpu, tcr);
  break;
 }
 case 128:
  vcpu->arch.vrsave = set_reg_val(id, *val);
  break;
 default:
  r = vcpu->kvm->arch.kvm_ops->set_one_reg(vcpu, id, val);
  break;
 }

 return r;
}
