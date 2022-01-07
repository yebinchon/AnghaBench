
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int kvm_emulate_instruction (int *,int ) ;

__attribute__((used)) static int emulate_on_interception(struct vcpu_svm *svm)
{
 return kvm_emulate_instruction(&svm->vcpu, 0);
}
