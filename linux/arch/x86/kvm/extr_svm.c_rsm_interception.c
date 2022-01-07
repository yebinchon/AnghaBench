
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int kvm_emulate_instruction_from_buffer (int *,int ,int) ;
 int rsm_ins_bytes ;

__attribute__((used)) static int rsm_interception(struct vcpu_svm *svm)
{
 return kvm_emulate_instruction_from_buffer(&svm->vcpu, rsm_ins_bytes, 2);
}
