
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int x86_emulate_instruction (struct kvm_vcpu*,int ,int ,void*,int) ;

int kvm_emulate_instruction_from_buffer(struct kvm_vcpu *vcpu,
     void *insn, int insn_len)
{
 return x86_emulate_instruction(vcpu, 0, 0, insn, insn_len);
}
