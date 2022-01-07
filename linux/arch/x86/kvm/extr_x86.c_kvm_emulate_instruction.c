
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int x86_emulate_instruction (struct kvm_vcpu*,int ,int,int *,int ) ;

int kvm_emulate_instruction(struct kvm_vcpu *vcpu, int emulation_type)
{
 return x86_emulate_instruction(vcpu, 0, emulation_type, ((void*)0), 0);
}
