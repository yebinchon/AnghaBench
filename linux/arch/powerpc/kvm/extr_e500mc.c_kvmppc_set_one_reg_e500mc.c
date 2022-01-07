
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union kvmppc_one_reg {int dummy; } kvmppc_one_reg ;
typedef int u64 ;
struct TYPE_2__ {int sprg9; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



 int kvmppc_set_one_reg_e500_tlb (struct kvm_vcpu*,int,union kvmppc_one_reg*) ;
 int set_reg_val (int,union kvmppc_one_reg) ;

__attribute__((used)) static int kvmppc_set_one_reg_e500mc(struct kvm_vcpu *vcpu, u64 id,
         union kvmppc_one_reg *val)
{
 int r = 0;

 switch (id) {
 case 128:
  vcpu->arch.sprg9 = set_reg_val(id, *val);
  break;
 default:
  r = kvmppc_set_one_reg_e500_tlb(vcpu, id, val);
 }

 return r;
}
