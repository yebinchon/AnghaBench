
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mips_instruction {int member_0; } ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvm_mips_trans_replace (struct kvm_vcpu*,int *,union mips_instruction) ;

int kvm_mips_trans_cache_index(union mips_instruction inst, u32 *opc,
          struct kvm_vcpu *vcpu)
{
 union mips_instruction nop_inst = { 0 };


 return kvm_mips_trans_replace(vcpu, opc, nop_inst);
}
