
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long nested_cr3; } ;
struct vcpu_svm {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long nested_svm_get_tdp_cr3(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 return svm->nested.nested_cr3;
}
